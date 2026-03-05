// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'v2_queued_resource_tpu.dart';

/// Input properties used for looking up and filtering V2QueuedResource resources.
class V2QueuedResourceState {
  /// The immutable name of the Queued Resource.
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// Defines a TPU resource.
  /// Structure is documented below.
  final pulumi.Input<V2QueuedResourceTpu>? tpu;
  /// The GCP location for the Queued Resource. If it is not provided, the provider zone is used.
  final pulumi.Input<String>? zone;

  /// Creates a new [V2QueuedResourceState].
  /// [name] The immutable name of the Queued Resource.
  /// [project] The ID of the project in which the resource belongs.
  /// [tpu] Defines a TPU resource.
  /// [zone] The GCP location for the Queued Resource. If it is not provided, the provider zone is used.
  V2QueuedResourceState({
    this.name,
    this.project,
    this.tpu,
    this.zone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'project': ?project,
      'tpu': ?pulumi.Input.mapOptionalInputValue<V2QueuedResourceTpu, Map<String, dynamic>>(tpu, (value) => value.toMap()),
      'zone': ?zone,
    };
  }

  factory V2QueuedResourceState.fromMap(Map<String, dynamic> map) {
    return V2QueuedResourceState(
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tpu: (() { final guardedValue = map['tpu']; if (guardedValue == null) return null; return pulumi.Input.fromValue(V2QueuedResourceTpu.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      zone: (() { final guardedValue = map['zone']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

