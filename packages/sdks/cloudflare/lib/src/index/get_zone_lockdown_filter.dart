// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZoneLockdownFilter {
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
  /// The timestamp of when the rule was last modified.
  final pulumi.Input<String?>? modifiedOn;
  /// The priority of the rule to control the processing order. A lower number indicates higher priority. If not provided, any rules with a configured priority will be processed before rules without a priority.
  final pulumi.Input<double?>? priority;
  /// A single URI to search for in the list of URLs of existing rules.
  final pulumi.Input<String?>? uriSearch;

  /// Creates a new [GetZoneLockdownFilter].
  /// [createdOn] The timestamp of when the rule was created.
  /// [description] A string to search for in the description of existing rules.
  /// [descriptionSearch] A string to search for in the description of existing rules.
  /// [ip] A single IP address to search for in existing rules.
  /// [ipRangeSearch] A single IP address range to search for in existing rules.
  /// [ipSearch] A single IP address to search for in existing rules.
  /// [modifiedOn] The timestamp of when the rule was last modified.
  /// [priority] The priority of the rule to control the processing order. A lower number indicates higher priority. If not provided, any rules with a configured priority will be processed before rules without a priority.
  /// [uriSearch] A single URI to search for in the list of URLs of existing rules.
  const GetZoneLockdownFilter({
    this.createdOn,
    this.description,
    this.descriptionSearch,
    this.ip,
    this.ipRangeSearch,
    this.ipSearch,
    this.modifiedOn,
    this.priority,
    this.uriSearch,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createdOn': ?createdOn,
      'description': ?description,
      'descriptionSearch': ?descriptionSearch,
      'ip': ?ip,
      'ipRangeSearch': ?ipRangeSearch,
      'ipSearch': ?ipSearch,
      'modifiedOn': ?modifiedOn,
      'priority': ?priority,
      'uriSearch': ?uriSearch,
    };
  }

  factory GetZoneLockdownFilter.fromMap(Map<String, dynamic> map) {
    return GetZoneLockdownFilter(
      createdOn: (() { final guardedValue = map['createdOn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      descriptionSearch: (() { final guardedValue = map['descriptionSearch']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ip: (() { final guardedValue = map['ip']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ipRangeSearch: (() { final guardedValue = map['ipRangeSearch']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ipSearch: (() { final guardedValue = map['ipSearch']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      modifiedOn: (() { final guardedValue = map['modifiedOn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      priority: (() { final guardedValue = map['priority']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      uriSearch: (() { final guardedValue = map['uriSearch']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
