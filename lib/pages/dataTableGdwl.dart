import 'package:appdart/data.dart/teams.dart';
import 'package:appdart/model/team.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import '../widget/ScrollableWidget.dart';

class dataTableGdwl extends StatefulWidget {
  const dataTableGdwl({Key? key}) : super(key: key);

  @override
  State<dataTableGdwl> createState() => _dataTableGdwlState();
}

class _dataTableGdwlState extends State<dataTableGdwl> {
  late List<Team> teams;
  int? sortColumnIndex;
  bool isAscending = false;

  @override
  void initState() {
    super.initState();

    this.teams = List.of(allTeams);
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        body: ScrollableWidget(child: buildDataTable()),
      );
  Widget buildDataTable() {
    final columns = ['الفريق', 'id', 'point'];

    return DataTable(
      // sortAscending: isAscending,
      // sortColumnIndex: sortColumnIndex,
      columns: getColumns(columns),
      rows: getRows(teams),
    );
  }

  List<DataColumn> getColumns(List<String> columns) => columns
      .map((String column) => DataColumn(
            label: Text(column),
            // onSort: onSort,
          ))
      .toList();

  List<DataRow> getRows(List<Team> users) => users.map((Team team) {
        final cells = [team.nameAr, team.teamId, team.name];

        return DataRow(cells: getCells(cells));
      }).toList();

  List<DataCell> getCells(List<dynamic> cells) =>
      cells.map((data) => DataCell(Text('$data'))).toList();

  // void onSort(int columnIndex, bool ascending) {
  //   if (columnIndex == 0) {
  //     teams.sort((team1, team2) =>
  //         compareString(ascending, team1.name, team2.name));
  //   } else if (columnIndex == 1) {
  //     teams.sort((team1, team2) =>
  //         compareString(ascending, team1.name, team2.name, team2.name));
  //   } else if (columnIndex == 2) {
  //     teams.sort((team1, team2) =>
  //         compareString(ascending, '${team1.teamId}', '${team2.teamId}'));
  //   }

  //   setState(() {
  //     this.sortColumnIndex = columnIndex;
  //     this.isAscending = ascending;
  //   });
  // }

  int compareString(bool ascending, String value1, String value2) =>
      ascending ? value1.compareTo(value2) : value2.compareTo(value1);
}
