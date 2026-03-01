// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering AttachedNetwork resources.
class AttachedNetworkState {
  /// The ID of the associated Dev Center. Changing this forces a new resource to be created.
  final pulumi.Input<String>? devCenterId;
  /// Specifies the name of this Dev Center Attached Network. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The ID of the Dev Center Network Connection you want to attach. Changing this forces a new resource to be created.
  final pulumi.Input<String>? networkConnectionId;

  /// Creates a new [AttachedNetworkState].
  /// [devCenterId] The ID of the associated Dev Center. Changing this forces a new resource to be created.
  /// [name] Specifies the name of this Dev Center Attached Network. Changing this forces a new resource to be created.
  /// [networkConnectionId] The ID of the Dev Center Network Connection you want to attach. Changing this forces a new resource to be created.
  AttachedNetworkState({
    pulumi.Output<String>? devCenterId,
    pulumi.Output<String>? name,
    pulumi.Output<String>? networkConnectionId,
  }) :
      devCenterId = pulumi.Input.asOptionalInput<String>(devCenterId),
      name = pulumi.Input.asOptionalInput<String>(name),
      networkConnectionId = pulumi.Input.asOptionalInput<String>(networkConnectionId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'devCenterId': ?devCenterId,
      'name': ?name,
      'networkConnectionId': ?networkConnectionId,
    };
  }

  factory AttachedNetworkState.fromMap(Map<String, dynamic> map) {
    return AttachedNetworkState(
      devCenterId: map['devCenterId'] == null ? null : pulumi.Output.create<String>(map['devCenterId'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      networkConnectionId: map['networkConnectionId'] == null ? null : pulumi.Output.create<String>(map['networkConnectionId'] as String),
    );
  }
}

