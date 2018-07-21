import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Dessert {
  Dessert(this.name, this.calories);

  final String name;
  final String calories;

  bool selected = false;
}

class DessertDataSource extends DataTableSource {
  final List<Dessert> _desserts = <Dessert>[
    new Dessert(
      '09.30 AM - 10.15 AM',
      "Inauguration",
    ),
    new Dessert(
      '09.30 AM - 10.15 AM',
      "Key Note Address by\nDr. Narendranath Udupa,\nHead,Department of Lighting Research at Philips Lighting, Bengaluru.\nTopic: “IoT in Smart Cities and Lighting”",
    ),
    new Dessert(
      '09.30 AM - 10.15 AM',
      "",
    ),
    new Dessert(
      '09.30 AM - 10.15 AM',
      "",
    ),
    new Dessert(
      '09.30 AM - 10.15 AM',
      "",
    ),
    new Dessert(
      '09.30 AM - 10.15 AM',
      "",
    ),
    new Dessert(
      '09.30 AM - 10.15 AM',
      "",
    ),
    new Dessert(
      '09.30 AM - 10.15 AM',
      "",
    ),
    new Dessert(
      '09.30 AM - 10.15 AM',
      "",
    ),
    new Dessert(
      '09.30 AM - 10.15 AM',
      "",
    ),
    new Dessert(
      '09.30 AM - 10.15 AM',
      "",
    ),
  ];

  void _sort<T>(Comparable<T> getField(Dessert d), bool ascending) {
    _desserts.sort((Dessert a, Dessert b) {
      if (!ascending) {
        final Dessert c = a;
        a = b;
        b = c;
      }
      final Comparable<T> aValue = getField(a);
      final Comparable<T> bValue = getField(b);
      return Comparable.compare(aValue, bValue);
    });
    notifyListeners();
  }

  int _selectedCount = 0;

  @override
  DataRow getRow(int index) {
    assert(index >= 0);
    if (index >= _desserts.length) return null;
    final Dessert dessert = _desserts[index];
    return new DataRow.byIndex(
        index: index,
        selected: dessert.selected,
        onSelectChanged: (bool value) {
          if (dessert.selected != value) {
            _selectedCount += value ? 1 : -1;
            assert(_selectedCount >= 0);
            dessert.selected = value;
            notifyListeners();
          }
        },
        cells: <DataCell>[
          new DataCell(new Text('${dessert.name}')),
          new DataCell(new Text('${dessert.calories}')),
        ]);
  }

  @override
  int get rowCount => _desserts.length;

  @override
  bool get isRowCountApproximate => false;

  @override
  int get selectedRowCount => _selectedCount;

  void _selectAll(bool checked) {
    for (Dessert dessert in _desserts) dessert.selected = checked;
    _selectedCount = checked ? _desserts.length : 0;
    notifyListeners();
  }
}

class DataTableDemo extends StatefulWidget {
  static const String routeName = '/material/data-table';

  @override
  _DataTableDemoState createState() => new _DataTableDemoState();
}

class _DataTableDemoState extends State<DataTableDemo> {
  int _rowsPerPage = PaginatedDataTable.defaultRowsPerPage;
  int _sortColumnIndex;
  bool _sortAscending = true;
  final DessertDataSource _dessertsDataSource = new DessertDataSource();

  void _sort<T>(
      Comparable<T> getField(Dessert d), int columnIndex, bool ascending) {
    _dessertsDataSource._sort<T>(getField, ascending);
    setState(() {
      _sortColumnIndex = columnIndex;
      _sortAscending = ascending;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListView(padding: const EdgeInsets.all(20.0), children: <Widget>[
      new PaginatedDataTable(
          header: const Text('Schedule'),
          rowsPerPage: _rowsPerPage,
          onRowsPerPageChanged: (int value) {
            setState(() {
              _rowsPerPage = value;
            });
          },
          sortColumnIndex: _sortColumnIndex,
          sortAscending: _sortAscending,
          onSelectAll: _dessertsDataSource._selectAll,
          columns: <DataColumn>[
            new DataColumn(
                label: const Text('Timing'),
                tooltip: 'Timing of the event on the day of event'),
            new DataColumn(
              label: const Text('Event Particulars'),
              tooltip: 'Details about the event',
            ),
          ],
          source: _dessertsDataSource)
    ]);
  }
}
