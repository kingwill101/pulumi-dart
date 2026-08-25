// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dashboard_chart_dashboard_query_input.dart';

class DashboardChartDashboardQuery {
  /// (Output)
  /// This checksum is computed by the server.
  final pulumi.Input<String?>? etag;
  /// Input parameters for the query, such as time windows.
  /// Structure is documented below.
  final pulumi.Input<DashboardChartDashboardQueryInput?>? input;
  /// (Output)
  /// name of the query.
  final pulumi.Input<String?>? name;
  /// The raw query string.
  final pulumi.Input<String> query;

  /// Creates a new [DashboardChartDashboardQuery].
  /// [etag] (Output)
  /// [input] Input parameters for the query, such as time windows.
  /// [name] (Output)
  /// [query] The raw query string.
  const DashboardChartDashboardQuery({
    this.etag,
    this.input,
    this.name,
    required this.query,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'etag': ?etag,
      'input': ?pulumi.Input.mapOptionalInputValue<DashboardChartDashboardQueryInput, Map<String, dynamic>>(input, (value) => value.toMap()),
      'name': ?name,
      'query': query,
    };
  }

  factory DashboardChartDashboardQuery.fromMap(Map<String, dynamic> map) {
    return DashboardChartDashboardQuery(
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      input: (() { final guardedValue = map['input']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DashboardChartDashboardQueryInput.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      query: pulumi.Input.fromValue(map['query'] as String),
    );
  }
}
