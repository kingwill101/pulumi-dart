// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'deployment_model.dart';
import 'deployment_sku.dart';

/// {@template pulumi_cognitive_deployment_deployment_args_doc}
/// The set of arguments for Deployment.
/// {@endtemplate}
/// {@macro pulumi_cognitive_deployment_deployment_args_doc}
class DeploymentArgs {
  /// The ID of the Cognitive Services Account. Changing this forces a new resource to be created.
  final pulumi.Input<String> cognitiveAccountId;
  /// Whether dynamic throttling is enabled.
  final pulumi.Input<bool?>? dynamicThrottlingEnabled;
  /// A `model` block as defined below. Changing this forces a new resource to be created.
  final pulumi.Input<DeploymentModel> model;
  /// The name of the Cognitive Services Account Deployment. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? name;
  /// The name of RAI policy.
  final pulumi.Input<String?>? raiPolicyName;
  /// A `sku` block as defined below.
  final pulumi.Input<DeploymentSku> sku;
  /// Deployment model version upgrade option. Possible values are `OnceNewDefaultVersionAvailable`, `OnceCurrentVersionExpired`, and `NoAutoUpgrade`. Defaults to `OnceNewDefaultVersionAvailable`.
  final pulumi.Input<String?>? versionUpgradeOption;

  /// Creates a new [DeploymentArgs].
  /// [cognitiveAccountId] The ID of the Cognitive Services Account. Changing this forces a new resource to be created.
  /// [dynamicThrottlingEnabled] Whether dynamic throttling is enabled.
  /// [model] A `model` block as defined below. Changing this forces a new resource to be created.
  /// [name] The name of the Cognitive Services Account Deployment. Changing this forces a new resource to be created.
  /// [raiPolicyName] The name of RAI policy.
  /// [sku] A `sku` block as defined below.
  /// [versionUpgradeOption] Deployment model version upgrade option. Possible values are `OnceNewDefaultVersionAvailable`, `OnceCurrentVersionExpired`, and `NoAutoUpgrade`. Defaults to `OnceNewDefaultVersionAvailable`.
  const DeploymentArgs({
    required this.cognitiveAccountId,
    this.dynamicThrottlingEnabled,
    required this.model,
    this.name,
    this.raiPolicyName,
    required this.sku,
    this.versionUpgradeOption,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cognitiveAccountId': cognitiveAccountId,
      'dynamicThrottlingEnabled': ?dynamicThrottlingEnabled,
      'model': pulumi.Input.mapInputValue<DeploymentModel, Map<String, dynamic>>(model, (value) => value.toMap()),
      'name': ?name,
      'raiPolicyName': ?raiPolicyName,
      'sku': pulumi.Input.mapInputValue<DeploymentSku, Map<String, dynamic>>(sku, (value) => value.toMap()),
      'versionUpgradeOption': ?versionUpgradeOption,
    };
  }

  factory DeploymentArgs.fromMap(Map<String, dynamic> map) {
    return DeploymentArgs(
      cognitiveAccountId: pulumi.Input.fromValue(map['cognitiveAccountId'] as String),
      dynamicThrottlingEnabled: (() { final guardedValue = map['dynamicThrottlingEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      model: pulumi.Input.fromValue(DeploymentModel.fromMap((map['model']! as Map).cast<String, dynamic>())),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      raiPolicyName: (() { final guardedValue = map['raiPolicyName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sku: pulumi.Input.fromValue(DeploymentSku.fromMap((map['sku']! as Map).cast<String, dynamic>())),
      versionUpgradeOption: (() { final guardedValue = map['versionUpgradeOption']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
