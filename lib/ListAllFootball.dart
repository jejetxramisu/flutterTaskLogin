import 'package:flutter/material.dart';
import 'package:flutter_logintask1/PremiereLeagueModel.dart';
import 'package:flutter_logintask1/detailList.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class Listfootball extends StatefulWidget {
  Listfootball({Key? key}) : super(key: key);

  @override
  State<Listfootball> createState() => _ListfootballState();
}

class _ListfootballState extends State<Listfootball> {
  PremiereLeagueModel? premiereLeagueModel;
  bool _isLoad = false;

  getAllListPL() async {
    setState(() {
      _isLoad = true;
    });
    var data = await http.get(Uri.parse(
        "https://www.thesportsdb.com/api/v1/json/2/search_all_teams.php?l=English%20Premier%20League"));
    premiereLeagueModel =
        PremiereLeagueModel.fromJson(json.decode(data.body.toString()));
    setState(() {
      _isLoad = false;
    });
  }

  @override
  void initState() {
    super.initState();
    getAllListPL();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text("List Premiere Football"),
        backgroundColor: Color.fromRGBO(1, 186, 118, 1),
      ),
      body: Center(
        child: Container(
          child: _isLoad
              ? CircularProgressIndicator()
              : ListView.builder(
                  itemCount: premiereLeagueModel!.teams!.length,
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => DetailPage(
                                      description: premiereLeagueModel!
                                          .teams![index].strDescriptionEN
                                          .toString(),
                                      image: premiereLeagueModel!
                                          .teams![index].strTeamLogo
                                          .toString(),
                                      title: premiereLeagueModel!
                                          .teams![index].strTeam
                                          .toString(),
                                    )));
                      },
                      child: Card(
                        child: Container(
                          margin: EdgeInsets.all(20),
                          child: Row(
                            children: [
                              Expanded(
                                child: Container(
                                  margin: EdgeInsets.only(right: 20),
                                  width: 30,
                                  height: 30,
                                  child: Image.network(premiereLeagueModel!
                                      .teams![index].strTeamBadge
                                      .toString()),
                                ),
                              ),
                              Expanded(
                                flex: 3,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(premiereLeagueModel!
                                        .teams![index].strTeam
                                        .toString()),
                                    Text(premiereLeagueModel!
                                        .teams![index].strStadium
                                        .toString()),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  }),
        ),
      ),
    );
  }
}
