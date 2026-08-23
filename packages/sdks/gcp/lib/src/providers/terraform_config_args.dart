// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_providers_terraform_config_args_doc}
/// Arguments for terraformConfig.
/// {@endtemplate}
/// {@macro pulumi_providers_terraform_config_args_doc}
class TerraformConfigArgs {
  final pulumi.Input<dynamic> self;

  /// Creates a new [TerraformConfigArgs].
  /// [self] Required.
  const TerraformConfigArgs({
    required this.self,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      '__self__': self,
    };
  }

  factory TerraformConfigArgs.fromMap(Map<String, dynamic> map) {
    return TerraformConfigArgs(
      self: pulumi.Input.fromValue(map['__self__']),
    );
  }
}
