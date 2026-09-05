// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'job_agent_identity.dart';

/// {@template pulumi_mssql_job_agent_job_agent_args_doc}
/// The set of arguments for JobAgent.
/// {@endtemplate}
/// {@macro pulumi_mssql_job_agent_job_agent_args_doc}
class JobAgentArgs {
  /// The ID of the database to store metadata for this Elastic Job Agent. Changing this forces a new Elastic Job Agent to be created.
  final pulumi.Input<String> databaseId;
  /// An `identity` block as defined below.
  final pulumi.Input<JobAgentIdentity?>? identity;
  /// The Azure Region where this Elastic Job Agent should exist. Changing this forces a new Elastic Job Agent to be created.
  final pulumi.Input<String?>? location;
  /// The name which should be used for this Elastic Job Agent. Changing this forces a new Elastic Job Agent to be created.
  final pulumi.Input<String?>? name;
  /// The name of the SKU to use for this Elastic Job Agent. Possible values are `JA100`, `JA200`, `JA400`, and `JA800`. Defaults to `JA100`.
  final pulumi.Input<String?>? sku;
  /// A mapping of tags which should be assigned to this Elastic Job Agent.
  final pulumi.Input<Map<String, String>?>? tags;

  /// Creates a new [JobAgentArgs].
  /// [databaseId] The ID of the database to store metadata for this Elastic Job Agent. Changing this forces a new Elastic Job Agent to be created.
  /// [identity] An `identity` block as defined below.
  /// [location] The Azure Region where this Elastic Job Agent should exist. Changing this forces a new Elastic Job Agent to be created.
  /// [name] The name which should be used for this Elastic Job Agent. Changing this forces a new Elastic Job Agent to be created.
  /// [sku] The name of the SKU to use for this Elastic Job Agent. Possible values are `JA100`, `JA200`, `JA400`, and `JA800`. Defaults to `JA100`.
  /// [tags] A mapping of tags which should be assigned to this Elastic Job Agent.
  const JobAgentArgs({
    required this.databaseId,
    this.identity,
    this.location,
    this.name,
    this.sku,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'databaseId': databaseId,
      'identity': ?pulumi.Input.mapOptionalInputValue<JobAgentIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'location': ?location,
      'name': ?name,
      'sku': ?sku,
      'tags': ?tags,
    };
  }

  factory JobAgentArgs.fromMap(Map<String, dynamic> map) {
    return JobAgentArgs(
      databaseId: pulumi.Input.fromValue(map['databaseId'] as String),
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(JobAgentIdentity.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sku: (() { final guardedValue = map['sku']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
