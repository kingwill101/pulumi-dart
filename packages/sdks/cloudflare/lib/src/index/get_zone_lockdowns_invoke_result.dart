// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_zone_lockdowns_result.dart';

/// Result data returned by getZoneLockdowns.
class GetZoneLockdownsInvokeResult {
  /// The timestamp of when the rule was created.
  final String? createdOn;
  /// A string to search for in the description of existing rules.
  final String? description;
  /// A string to search for in the description of existing rules.
  final String? descriptionSearch;
  /// A single IP address to search for in existing rules.
  final String? ip;
  /// A single IP address range to search for in existing rules.
  final String? ipRangeSearch;
  /// A single IP address to search for in existing rules.
  final String? ipSearch;
  /// Max items to fetch, default: 1000
  final int? maxItems;
  /// The timestamp of when the rule was last modified.
  final String? modifiedOn;
  /// The priority of the rule to control the processing order. A lower number indicates higher priority. If not provided, any rules with a configured priority will be processed before rules without a priority.
  final double? priority;
  /// The items returned by the data source
  final List<GetZoneLockdownsResult>? results;
  /// A single URI to search for in the list of URLs of existing rules.
  final String? uriSearch;
  /// Defines an identifier.
  final String? zoneId;

  /// Creates a new [GetZoneLockdownsInvokeResult].
  /// [createdOn] The timestamp of when the rule was created.
  /// [description] A string to search for in the description of existing rules.
  /// [descriptionSearch] A string to search for in the description of existing rules.
  /// [ip] A single IP address to search for in existing rules.
  /// [ipRangeSearch] A single IP address range to search for in existing rules.
  /// [ipSearch] A single IP address to search for in existing rules.
  /// [maxItems] Max items to fetch, default: 1000
  /// [modifiedOn] The timestamp of when the rule was last modified.
  /// [priority] The priority of the rule to control the processing order. A lower number indicates higher priority. If not provided, any rules with a configured priority will be processed before rules without a priority.
  /// [results] The items returned by the data source
  /// [uriSearch] A single URI to search for in the list of URLs of existing rules.
  /// [zoneId] Defines an identifier.
  const GetZoneLockdownsInvokeResult({
    this.createdOn,
    this.description,
    this.descriptionSearch,
    this.ip,
    this.ipRangeSearch,
    this.ipSearch,
    this.maxItems,
    this.modifiedOn,
    this.priority,
    this.results,
    this.uriSearch,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createdOn': ?createdOn,
      'description': ?description,
      'descriptionSearch': ?descriptionSearch,
      'ip': ?ip,
      'ipRangeSearch': ?ipRangeSearch,
      'ipSearch': ?ipSearch,
      'maxItems': ?maxItems,
      'modifiedOn': ?modifiedOn,
      'priority': ?priority,
      'results': ?(() { final guardedValue = results; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetZoneLockdownsResult, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'uriSearch': ?uriSearch,
      'zoneId': ?zoneId,
    };
  }

  factory GetZoneLockdownsInvokeResult.fromMap(Map<String, dynamic> map) {
    return GetZoneLockdownsInvokeResult(
      createdOn: (() { final guardedValue = map['createdOn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      descriptionSearch: (() { final guardedValue = map['descriptionSearch']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ip: (() { final guardedValue = map['ip']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ipRangeSearch: (() { final guardedValue = map['ipRangeSearch']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ipSearch: (() { final guardedValue = map['ipSearch']; if (guardedValue == null) return null; return guardedValue as String; })(),
      maxItems: (() { final guardedValue = map['maxItems']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      modifiedOn: (() { final guardedValue = map['modifiedOn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      priority: (() { final guardedValue = map['priority']; if (guardedValue == null) return null; return (guardedValue as num).toDouble(); })(),
      results: (() { final guardedValue = map['results']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetZoneLockdownsResult>(guardedValue, (value) => GetZoneLockdownsResult.fromMap((value as Map).cast<String, dynamic>())); })(),
      uriSearch: (() { final guardedValue = map['uriSearch']; if (guardedValue == null) return null; return guardedValue as String; })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
