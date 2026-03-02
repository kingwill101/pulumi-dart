// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'addons_config_addons_config.dart';

/// {@template pulumi_apigee_addons_config_addons_config_args_doc}
/// The set of arguments for AddonsConfig.
/// {@endtemplate}
/// {@macro pulumi_apigee_addons_config_addons_config_args_doc}
class AddonsConfigArgs {
  /// Addon configurations of the Apigee organization.
  /// Structure is documented below.
  final pulumi.Input<AddonsConfigAddonsConfig>? addonsConfig;
  /// Name of the Apigee organization.
  final pulumi.Input<String> org;

  /// Creates a new [AddonsConfigArgs].
  /// [addonsConfig] Addon configurations of the Apigee organization.
  /// [org] Name of the Apigee organization.
  AddonsConfigArgs({
    this.addonsConfig,
    required this.org,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addonsConfig': ?pulumi.Input.mapOptionalInputValue<AddonsConfigAddonsConfig, Map<String, dynamic>>(addonsConfig, (value) => value.toMap()),
      'org': org,
    };
  }

  factory AddonsConfigArgs.fromMap(Map<String, dynamic> map) {
    return AddonsConfigArgs(
      addonsConfig: map['addonsConfig'] == null ? null : (AddonsConfigAddonsConfig.fromMap((map['addonsConfig'] as Map).cast<String, dynamic>())).input(),
      org: (map['org'] as String).input(),
    );
  }
}

