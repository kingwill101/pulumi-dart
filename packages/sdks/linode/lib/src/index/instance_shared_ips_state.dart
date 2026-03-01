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
  InstanceSharedIpsState({
    pulumi.Output<List<String>>? addresses,
    pulumi.Output<int>? linodeId,
  }) :
      addresses = pulumi.Input.asOptionalInput<List<String>>(addresses),
      linodeId = pulumi.Input.asOptionalInput<int>(linodeId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addresses': ?addresses,
      'linodeId': ?linodeId,
    };
  }

  factory InstanceSharedIpsState.fromMap(Map<String, dynamic> map) {
    return InstanceSharedIpsState(
      addresses: map['addresses'] == null ? null : pulumi.Output.create<List<String>>((map['addresses'] as List).cast<String>()),
      linodeId: map['linodeId'] == null ? null : pulumi.Output.create<int>(map['linodeId'] as int),
    );
  }
}

