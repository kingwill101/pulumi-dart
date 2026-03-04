// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering InstanceSharedIps resources.
class InstanceSharedIpsState {
  /// The set of IPs to share with the Linode.
  final pulumi.Input<List<String>>? addresses;

  /// The ID of the Linode to share the IPs to.
  final pulumi.Input<int>? linodeId;

  /// Creates a new [InstanceSharedIpsState].
  /// [addresses] The set of IPs to share with the Linode.
  /// [linodeId] The ID of the Linode to share the IPs to.
  InstanceSharedIpsState({this.addresses, this.linodeId});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'addresses': ?addresses, 'linodeId': ?linodeId};
  }

  factory InstanceSharedIpsState.fromMap(Map<String, dynamic> map) {
    return InstanceSharedIpsState(
      addresses: (() {
        final guardedValue = map['addresses'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      linodeId: (() {
        final guardedValue = map['linodeId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
    );
  }
}
