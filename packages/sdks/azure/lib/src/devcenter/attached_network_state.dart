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
    this.devCenterId,
    this.name,
    this.networkConnectionId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'devCenterId': ?devCenterId,
      'name': ?name,
      'networkConnectionId': ?networkConnectionId,
    };
  }

  factory AttachedNetworkState.fromMap(Map<String, dynamic> map) {
    return AttachedNetworkState(
      devCenterId: map['devCenterId'] == null ? null : (map['devCenterId']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      networkConnectionId: map['networkConnectionId'] == null ? null : (map['networkConnectionId']! as String).input(),
    );
  }
}

