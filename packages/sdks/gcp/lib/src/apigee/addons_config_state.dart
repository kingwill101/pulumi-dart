// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'addons_config_addons_config.dart';

/// Input properties used for looking up and filtering AddonsConfig resources.
class AddonsConfigState {
  /// Addon configurations of the Apigee organization.
  /// Structure is documented below.
  final pulumi.Input<AddonsConfigAddonsConfig>? addonsConfig;
  /// Name of the Apigee organization.
  final pulumi.Input<String>? org;

  /// Creates a new [AddonsConfigState].
  /// [addonsConfig] Addon configurations of the Apigee organization.
  /// [org] Name of the Apigee organization.
  AddonsConfigState({
    this.addonsConfig,
    this.org,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addonsConfig': ?pulumi.Input.mapOptionalInputValue<AddonsConfigAddonsConfig, Map<String, dynamic>>(addonsConfig, (value) => value.toMap()),
      'org': ?org,
    };
  }

  factory AddonsConfigState.fromMap(Map<String, dynamic> map) {
    return AddonsConfigState(
      addonsConfig: map['addonsConfig'] == null ? null : (AddonsConfigAddonsConfig.fromMap((map['addonsConfig'] as Map).cast<String, dynamic>())).input(),
      org: map['org'] == null ? null : (map['org'] as String).input(),
    );
  }
}

