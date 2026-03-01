// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'job_agent_identity.dart';

/// Input properties used for looking up and filtering JobAgent resources.
class JobAgentState {
  /// The ID of the database to store metadata for this Elastic Job Agent. Changing this forces a new Elastic Job Agent to be created.
  final pulumi.Input<String>? databaseId;
  /// An `identity` block as defined below.
  final pulumi.Input<JobAgentIdentity>? identity;
  /// The Azure Region where this Elastic Job Agent should exist. Changing this forces a new Elastic Job Agent to be created.
  final pulumi.Input<String>? location;
  /// The name which should be used for this Elastic Job Agent. Changing this forces a new Elastic Job Agent to be created.
  final pulumi.Input<String>? name;
  /// The name of the SKU to use for this Elastic Job Agent. Possible values are `JA100`, `JA200`, `JA400`, and `JA800`. Defaults to `JA100`.
  final pulumi.Input<String>? sku;
  /// A mapping of tags which should be assigned to this Elastic Job Agent.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [JobAgentState].
  /// [databaseId] The ID of the database to store metadata for this Elastic Job Agent. Changing this forces a new Elastic Job Agent to be created.
  /// [identity] An `identity` block as defined below.
  /// [location] The Azure Region where this Elastic Job Agent should exist. Changing this forces a new Elastic Job Agent to be created.
  /// [name] The name which should be used for this Elastic Job Agent. Changing this forces a new Elastic Job Agent to be created.
  /// [sku] The name of the SKU to use for this Elastic Job Agent. Possible values are `JA100`, `JA200`, `JA400`, and `JA800`. Defaults to `JA100`.
  /// [tags] A mapping of tags which should be assigned to this Elastic Job Agent.
  JobAgentState({
    pulumi.Output<String>? databaseId,
    pulumi.Output<JobAgentIdentity>? identity,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<String>? sku,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      databaseId = pulumi.Input.asOptionalInput<String>(databaseId),
      identity = pulumi.Input.asOptionalInput<JobAgentIdentity>(identity),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      sku = pulumi.Input.asOptionalInput<String>(sku),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'databaseId': ?databaseId,
      'identity': ?pulumi.Input.mapOptionalInputValue<JobAgentIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'location': ?location,
      'name': ?name,
      'sku': ?sku,
      'tags': ?tags,
    };
  }

  factory JobAgentState.fromMap(Map<String, dynamic> map) {
    return JobAgentState(
      databaseId: map['databaseId'] == null ? null : pulumi.Output.create<String>(map['databaseId'] as String),
      identity: map['identity'] == null ? null : pulumi.Output.create<JobAgentIdentity>(JobAgentIdentity.fromMap((map['identity'] as Map).cast<String, dynamic>())),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      sku: map['sku'] == null ? null : pulumi.Output.create<String>(map['sku'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

