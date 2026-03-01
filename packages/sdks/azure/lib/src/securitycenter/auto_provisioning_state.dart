// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering AutoProvisioning resources.
class AutoProvisioningState {
  /// Should the security agent be automatically provisioned on Virtual Machines in this subscription? Possible values are `On` (to install the security agent automatically, if it's missing) or `Off` (to not install the security agent automatically).
  final pulumi.Input<String>? autoProvision;

  /// Creates a new [AutoProvisioningState].
  /// [autoProvision] Should the security agent be automatically provisioned on Virtual Machines in this subscription? Possible values are `On` (to install the security agent automatically, if it's missing) or `Off` (to not install the security agent automatically).
  AutoProvisioningState({
    pulumi.Output<String>? autoProvision,
  }) :
      autoProvision = pulumi.Input.asOptionalInput<String>(autoProvision);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoProvision': ?autoProvision,
    };
  }

  factory AutoProvisioningState.fromMap(Map<String, dynamic> map) {
    return AutoProvisioningState(
      autoProvision: map['autoProvision'] == null ? null : pulumi.Output.create<String>(map['autoProvision'] as String),
    );
  }
}

