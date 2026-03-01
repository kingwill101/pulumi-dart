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
  final pulumi.Input<bool>? dynamicThrottlingEnabled;
  /// A `model` block as defined below. Changing this forces a new resource to be created.
  final pulumi.Input<DeploymentModel> model;
  /// The name of the Cognitive Services Account Deployment. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The name of RAI policy.
  final pulumi.Input<String>? raiPolicyName;
  /// A `sku` block as defined below.
  final pulumi.Input<DeploymentSku> sku;
  /// Deployment model version upgrade option. Possible values are `OnceNewDefaultVersionAvailable`, `OnceCurrentVersionExpired`, and `NoAutoUpgrade`. Defaults to `OnceNewDefaultVersionAvailable`.
  final pulumi.Input<String>? versionUpgradeOption;

  /// Creates a new [DeploymentArgs].
  /// [cognitiveAccountId] The ID of the Cognitive Services Account. Changing this forces a new resource to be created.
  /// [dynamicThrottlingEnabled] Whether dynamic throttling is enabled.
  /// [model] A `model` block as defined below. Changing this forces a new resource to be created.
  /// [name] The name of the Cognitive Services Account Deployment. Changing this forces a new resource to be created.
  /// [raiPolicyName] The name of RAI policy.
  /// [sku] A `sku` block as defined below.
  /// [versionUpgradeOption] Deployment model version upgrade option. Possible values are `OnceNewDefaultVersionAvailable`, `OnceCurrentVersionExpired`, and `NoAutoUpgrade`. Defaults to `OnceNewDefaultVersionAvailable`.
  DeploymentArgs({
    required pulumi.Output<String> cognitiveAccountId,
    pulumi.Output<bool>? dynamicThrottlingEnabled,
    required pulumi.Output<DeploymentModel> model,
    pulumi.Output<String>? name,
    pulumi.Output<String>? raiPolicyName,
    required pulumi.Output<DeploymentSku> sku,
    pulumi.Output<String>? versionUpgradeOption,
  }) :
      cognitiveAccountId = pulumi.Input.asInput<String>(cognitiveAccountId),
      dynamicThrottlingEnabled = pulumi.Input.asOptionalInput<bool>(dynamicThrottlingEnabled),
      model = pulumi.Input.asInput<DeploymentModel>(model),
      name = pulumi.Input.asOptionalInput<String>(name),
      raiPolicyName = pulumi.Input.asOptionalInput<String>(raiPolicyName),
      sku = pulumi.Input.asInput<DeploymentSku>(sku),
      versionUpgradeOption = pulumi.Input.asOptionalInput<String>(versionUpgradeOption);

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
      cognitiveAccountId: pulumi.Output.create<String>(map['cognitiveAccountId'] as String),
      dynamicThrottlingEnabled: map['dynamicThrottlingEnabled'] == null ? null : pulumi.Output.create<bool>(map['dynamicThrottlingEnabled'] as bool),
      model: pulumi.Output.create<DeploymentModel>(DeploymentModel.fromMap((map['model'] as Map).cast<String, dynamic>())),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      raiPolicyName: map['raiPolicyName'] == null ? null : pulumi.Output.create<String>(map['raiPolicyName'] as String),
      sku: pulumi.Output.create<DeploymentSku>(DeploymentSku.fromMap((map['sku'] as Map).cast<String, dynamic>())),
      versionUpgradeOption: map['versionUpgradeOption'] == null ? null : pulumi.Output.create<String>(map['versionUpgradeOption'] as String),
    );
  }
}

