// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'deployment_model.dart';
import 'deployment_sku.dart';

/// Input properties used for looking up and filtering Deployment resources.
class DeploymentState {
  /// The ID of the Cognitive Services Account. Changing this forces a new resource to be created.
  final pulumi.Input<String>? cognitiveAccountId;
  /// Whether dynamic throttling is enabled.
  final pulumi.Input<bool>? dynamicThrottlingEnabled;
  /// A `model` block as defined below. Changing this forces a new resource to be created.
  final pulumi.Input<DeploymentModel>? model;
  /// The name of the Cognitive Services Account Deployment. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The name of RAI policy.
  final pulumi.Input<String>? raiPolicyName;
  /// A `sku` block as defined below.
  final pulumi.Input<DeploymentSku>? sku;
  /// Deployment model version upgrade option. Possible values are `OnceNewDefaultVersionAvailable`, `OnceCurrentVersionExpired`, and `NoAutoUpgrade`. Defaults to `OnceNewDefaultVersionAvailable`.
  final pulumi.Input<String>? versionUpgradeOption;

  /// Creates a new [DeploymentState].
  /// [cognitiveAccountId] The ID of the Cognitive Services Account. Changing this forces a new resource to be created.
  /// [dynamicThrottlingEnabled] Whether dynamic throttling is enabled.
  /// [model] A `model` block as defined below. Changing this forces a new resource to be created.
  /// [name] The name of the Cognitive Services Account Deployment. Changing this forces a new resource to be created.
  /// [raiPolicyName] The name of RAI policy.
  /// [sku] A `sku` block as defined below.
  /// [versionUpgradeOption] Deployment model version upgrade option. Possible values are `OnceNewDefaultVersionAvailable`, `OnceCurrentVersionExpired`, and `NoAutoUpgrade`. Defaults to `OnceNewDefaultVersionAvailable`.
  DeploymentState({
    pulumi.Output<String>? cognitiveAccountId,
    pulumi.Output<bool>? dynamicThrottlingEnabled,
    pulumi.Output<DeploymentModel>? model,
    pulumi.Output<String>? name,
    pulumi.Output<String>? raiPolicyName,
    pulumi.Output<DeploymentSku>? sku,
    pulumi.Output<String>? versionUpgradeOption,
  }) :
      cognitiveAccountId = pulumi.Input.asOptionalInput<String>(cognitiveAccountId),
      dynamicThrottlingEnabled = pulumi.Input.asOptionalInput<bool>(dynamicThrottlingEnabled),
      model = pulumi.Input.asOptionalInput<DeploymentModel>(model),
      name = pulumi.Input.asOptionalInput<String>(name),
      raiPolicyName = pulumi.Input.asOptionalInput<String>(raiPolicyName),
      sku = pulumi.Input.asOptionalInput<DeploymentSku>(sku),
      versionUpgradeOption = pulumi.Input.asOptionalInput<String>(versionUpgradeOption);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cognitiveAccountId': ?cognitiveAccountId,
      'dynamicThrottlingEnabled': ?dynamicThrottlingEnabled,
      'model': ?pulumi.Input.mapOptionalInputValue<DeploymentModel, Map<String, dynamic>>(model, (value) => value.toMap()),
      'name': ?name,
      'raiPolicyName': ?raiPolicyName,
      'sku': ?pulumi.Input.mapOptionalInputValue<DeploymentSku, Map<String, dynamic>>(sku, (value) => value.toMap()),
      'versionUpgradeOption': ?versionUpgradeOption,
    };
  }

  factory DeploymentState.fromMap(Map<String, dynamic> map) {
    return DeploymentState(
      cognitiveAccountId: map['cognitiveAccountId'] == null ? null : pulumi.Output.create<String>(map['cognitiveAccountId'] as String),
      dynamicThrottlingEnabled: map['dynamicThrottlingEnabled'] == null ? null : pulumi.Output.create<bool>(map['dynamicThrottlingEnabled'] as bool),
      model: map['model'] == null ? null : pulumi.Output.create<DeploymentModel>(DeploymentModel.fromMap((map['model'] as Map).cast<String, dynamic>())),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      raiPolicyName: map['raiPolicyName'] == null ? null : pulumi.Output.create<String>(map['raiPolicyName'] as String),
      sku: map['sku'] == null ? null : pulumi.Output.create<DeploymentSku>(DeploymentSku.fromMap((map['sku'] as Map).cast<String, dynamic>())),
      versionUpgradeOption: map['versionUpgradeOption'] == null ? null : pulumi.Output.create<String>(map['versionUpgradeOption'] as String),
    );
  }
}

