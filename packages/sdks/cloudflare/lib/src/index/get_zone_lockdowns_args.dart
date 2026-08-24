// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_zone_lockdowns_get_zone_lockdowns_args_doc}
/// Arguments for getZoneLockdowns.
/// {@endtemplate}
/// {@macro pulumi_index_get_zone_lockdowns_get_zone_lockdowns_args_doc}
class GetZoneLockdownsArgs {
  /// The timestamp of when the rule was created.
  final pulumi.Input<String?>? createdOn;
  /// A string to search for in the description of existing rules.
  final pulumi.Input<String?>? description;
  /// A string to search for in the description of existing rules.
  final pulumi.Input<String?>? descriptionSearch;
  /// A single IP address to search for in existing rules.
  final pulumi.Input<String?>? ip;
  /// A single IP address range to search for in existing rules.
  final pulumi.Input<String?>? ipRangeSearch;
  /// A single IP address to search for in existing rules.
  final pulumi.Input<String?>? ipSearch;
  /// Max items to fetch, default: 1000
  final pulumi.Input<int?>? maxItems;
  /// The timestamp of when the rule was last modified.
  final pulumi.Input<String?>? modifiedOn;
  /// The priority of the rule to control the processing order. A lower number indicates higher priority. If not provided, any rules with a configured priority will be processed before rules without a priority.
  final pulumi.Input<double?>? priority;
  /// A single URI to search for in the list of URLs of existing rules.
  final pulumi.Input<String?>? uriSearch;
  /// Defines an identifier.
  final pulumi.Input<String?>? zoneId;

  /// Creates a new [GetZoneLockdownsArgs].
  /// [createdOn] The timestamp of when the rule was created.
  /// [description] A string to search for in the description of existing rules.
  /// [descriptionSearch] A string to search for in the description of existing rules.
  /// [ip] A single IP address to search for in existing rules.
  /// [ipRangeSearch] A single IP address range to search for in existing rules.
  /// [ipSearch] A single IP address to search for in existing rules.
  /// [maxItems] Max items to fetch, default: 1000
  /// [modifiedOn] The timestamp of when the rule was last modified.
  /// [priority] The priority of the rule to control the processing order. A lower number indicates higher priority. If not provided, any rules with a configured priority will be processed before rules without a priority.
  /// [uriSearch] A single URI to search for in the list of URLs of existing rules.
  /// [zoneId] Defines an identifier.
  const GetZoneLockdownsArgs({
    this.createdOn,
    this.description,
    this.descriptionSearch,
    this.ip,
    this.ipRangeSearch,
    this.ipSearch,
    this.maxItems,
    this.modifiedOn,
    this.priority,
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
      'uriSearch': ?uriSearch,
      'zoneId': ?zoneId,
    };
  }

  factory GetZoneLockdownsArgs.fromMap(Map<String, dynamic> map) {
    return GetZoneLockdownsArgs(
      createdOn: (() { final guardedValue = map['createdOn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      descriptionSearch: (() { final guardedValue = map['descriptionSearch']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ip: (() { final guardedValue = map['ip']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ipRangeSearch: (() { final guardedValue = map['ipRangeSearch']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ipSearch: (() { final guardedValue = map['ipSearch']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      maxItems: (() { final guardedValue = map['maxItems']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      modifiedOn: (() { final guardedValue = map['modifiedOn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      priority: (() { final guardedValue = map['priority']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      uriSearch: (() { final guardedValue = map['uriSearch']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
