// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'record_set_routing_policy.dart';

/// {@template pulumi_dns_record_set_record_set_args_doc}
/// The set of arguments for RecordSet.
/// {@endtemplate}
/// {@macro pulumi_dns_record_set_record_set_args_doc}
class RecordSetArgs {
  /// Whether Terraform will be prevented from destroying the resource. Defaults to "DELETE".
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String>? deletionPolicy;
  /// The name of the zone in which this record set will
  /// reside.
  final pulumi.Input<String> managedZone;
  /// The DNS name this record set will apply to.
  final pulumi.Input<String> name;
  /// The ID of the project in which the resource belongs. If it
  /// is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The configuration for steering traffic based on query.
  /// Now you can specify either Weighted Round Robin(WRR) type or Geolocation(GEO) type.
  /// Structure is documented below.
  final pulumi.Input<RecordSetRoutingPolicy>? routingPolicy;
  /// The string data for the records in this record set
  /// whose meaning depends on the DNS type. For TXT record, if the string data contains spaces, add surrounding `\"` if you don't want your string to get split on spaces. To specify a single record value longer than 255 characters such as a TXT record for DKIM, add `\" \"` inside the Terraform configuration string (e.g. `"first255characters\" \"morecharacters"`).
  final pulumi.Input<List<String>>? rrdatas;
  /// The time-to-live of this record set (seconds).
  final pulumi.Input<int>? ttl;
  /// The DNS record set type.
  ///
  /// - - -
  final pulumi.Input<String> type;

  /// Creates a new [RecordSetArgs].
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to "DELETE".
  /// [managedZone] The name of the zone in which this record set will
  /// [name] The DNS name this record set will apply to.
  /// [project] The ID of the project in which the resource belongs. If it
  /// [routingPolicy] The configuration for steering traffic based on query.
  /// [rrdatas] The string data for the records in this record set
  /// [ttl] The time-to-live of this record set (seconds).
  /// [type] The DNS record set type.
  const RecordSetArgs({
    this.deletionPolicy,
    required this.managedZone,
    required this.name,
    this.project,
    this.routingPolicy,
    this.rrdatas,
    this.ttl,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deletionPolicy': ?deletionPolicy,
      'managedZone': managedZone,
      'name': name,
      'project': ?project,
      'routingPolicy': ?pulumi.Input.mapOptionalInputValue<RecordSetRoutingPolicy, Map<String, dynamic>>(routingPolicy, (value) => value.toMap()),
      'rrdatas': ?rrdatas,
      'ttl': ?ttl,
      'type': type,
    };
  }

  factory RecordSetArgs.fromMap(Map<String, dynamic> map) {
    return RecordSetArgs(
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      managedZone: pulumi.Input.fromValue(map['managedZone'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      routingPolicy: (() { final guardedValue = map['routingPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RecordSetRoutingPolicy.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      rrdatas: (() { final guardedValue = map['rrdatas']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      ttl: (() { final guardedValue = map['ttl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
