// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_database_engines_engine.dart';
import 'get_database_engines_filter.dart';

/// Result data returned by getDatabaseEngines.
class GetDatabaseEnginesResult {
  final List<GetDatabaseEnginesEngine> engines;
  final List<GetDatabaseEnginesFilter>? filters;

  /// The Managed Database engine ID in engine/version format.
  final String id;
  final bool? latest;
  final String? order;
  final String? orderBy;

  /// Creates a new [GetDatabaseEnginesResult].
  /// [engines] Required.
  /// [filters] Optional.
  /// [id] The Managed Database engine ID in engine/version format.
  /// [latest] Optional.
  /// [order] Optional.
  /// [orderBy] Optional.
  GetDatabaseEnginesResult({
    required this.engines,
    this.filters,
    required this.id,
    this.latest,
    this.order,
    this.orderBy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'engines':
          pulumi.Input.encodeList<
            GetDatabaseEnginesEngine,
            Map<String, dynamic>
          >(engines, (value) => value.toMap()),
      'filters': ?(() {
        final guardedValue = filters;
        if (guardedValue == null) return null;
        return pulumi.Input.encodeList<
          GetDatabaseEnginesFilter,
          Map<String, dynamic>
        >(guardedValue, (value) => value.toMap());
      })(),
      'id': id,
      'latest': ?latest,
      'order': ?order,
      'orderBy': ?orderBy,
    };
  }

  factory GetDatabaseEnginesResult.fromMap(Map<String, dynamic> map) {
    return GetDatabaseEnginesResult(
      engines: pulumi.Input.decodeList<GetDatabaseEnginesEngine>(
        map['engines']!,
        (value) => GetDatabaseEnginesEngine.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
      filters: (() {
        final guardedValue = map['filters'];
        if (guardedValue == null) return null;
        return pulumi.Input.decodeList<GetDatabaseEnginesFilter>(
          guardedValue,
          (value) => GetDatabaseEnginesFilter.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      id: map['id'] as String,
      latest: (() {
        final guardedValue = map['latest'];
        if (guardedValue == null) return null;
        return guardedValue as bool;
      })(),
      order: (() {
        final guardedValue = map['order'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      orderBy: (() {
        final guardedValue = map['orderBy'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
    );
  }
}
