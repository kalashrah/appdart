import 'dart:convert' as co;
import 'package:http/http.dart' as http;

class Team {
  String? teamId;
  String? teamApiId;
  String? dataId;
  String? name;
  String? nameAr;
  String? logo;

  Team(
      {this.teamId,
      this.teamApiId,
      this.dataId,
      this.name,
      this.nameAr,
      this.logo});

  Team.fromJson(Map<String, dynamic> json) {
    teamId = json['team_id'];
    teamApiId = json['team_api_id'];
    dataId = json['data_id'];
    name = json['name'];
    nameAr = json['name_ar'];
    logo = json['logo'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['team_id'] = this.teamId;
    data['team_api_id'] = this.teamApiId;
    data['data_id'] = this.dataId;
    data['name'] = this.name;
    data['name_ar'] = this.nameAr;
    data['logo'] = this.logo;
    return data;
  }
}
