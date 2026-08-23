// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'addons_config_addons_config.dart';

/// Input properties used for looking up and filtering AddonsConfig resources.
class AddonsConfigState {
  /// Addon configurations of the Apigee organization.
  /// Structure is documented below.
  final pulumi.Input<AddonsConfigAddonsConfig>? addonsConfig;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String>? deletionPolicy;
  /// Name of the Apigee organization.
  final pulumi.Input<String>? org;

  /// Creates a new [AddonsConfigState].
  /// [addonsConfig] Addon configurations of the Apigee organization.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [org] Name of the Apigee organization.
  const AddonsConfigState({
    this.addonsConfig,
    this.deletionPolicy,
    this.org,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addonsConfig': ?pulumi.Input.mapOptionalInputValue<AddonsConfigAddonsConfig, Map<String, dynamic>>(addonsConfig, (value) => value.toMap()),
      'deletionPolicy': ?deletionPolicy,
      'org': ?org,
    };
  }

  factory AddonsConfigState.fromMap(Map<String, dynamic> map) {
    return AddonsConfigState(
      addonsConfig: (() { final guardedValue = map['addonsConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AddonsConfigAddonsConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      org: (() { final guardedValue = map['org']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
