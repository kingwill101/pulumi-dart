// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_core_subscription_template_deployment_subscription_template_deployment_args_doc}
/// The set of arguments for SubscriptionTemplateDeployment.
/// {@endtemplate}
/// {@macro pulumi_core_subscription_template_deployment_subscription_template_deployment_args_doc}
class SubscriptionTemplateDeploymentArgs {
  /// The Debug Level which should be used for this Subscription Template Deployment. Possible values are `none`, `requestContent`, `responseContent` and `requestContent, responseContent`.
  final pulumi.Input<String>? debugLevel;
  /// The Azure Region where the Subscription Template Deployment should exist. Changing this forces a new Subscription Template Deployment to be created.
  final pulumi.Input<String>? location;
  /// The name which should be used for this Subscription Template Deployment. Changing this forces a new Subscription Template Deployment to be created.
  final pulumi.Input<String>? name;
  /// The contents of the ARM Template parameters file - containing a JSON list of parameters.
  final pulumi.Input<String>? parametersContent;
  /// A mapping of tags which should be assigned to the Subscription Template Deployment.
  final pulumi.Input<Map<String, String>>? tags;
  /// The contents of the ARM Template which should be deployed into this Subscription.
  final pulumi.Input<String>? templateContent;
  /// The ID of the Template Spec Version to deploy into the Subscription. Cannot be specified with `template_content`.
  final pulumi.Input<String>? templateSpecVersionId;

  /// Creates a new [SubscriptionTemplateDeploymentArgs].
  /// [debugLevel] The Debug Level which should be used for this Subscription Template Deployment. Possible values are `none`, `requestContent`, `responseContent` and `requestContent, responseContent`.
  /// [location] The Azure Region where the Subscription Template Deployment should exist. Changing this forces a new Subscription Template Deployment to be created.
  /// [name] The name which should be used for this Subscription Template Deployment. Changing this forces a new Subscription Template Deployment to be created.
  /// [parametersContent] The contents of the ARM Template parameters file - containing a JSON list of parameters.
  /// [tags] A mapping of tags which should be assigned to the Subscription Template Deployment.
  /// [templateContent] The contents of the ARM Template which should be deployed into this Subscription.
  /// [templateSpecVersionId] The ID of the Template Spec Version to deploy into the Subscription. Cannot be specified with `template_content`.
  SubscriptionTemplateDeploymentArgs({
    pulumi.Output<String>? debugLevel,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<String>? parametersContent,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<String>? templateContent,
    pulumi.Output<String>? templateSpecVersionId,
  }) :
      debugLevel = pulumi.Input.asOptionalInput<String>(debugLevel),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      parametersContent = pulumi.Input.asOptionalInput<String>(parametersContent),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      templateContent = pulumi.Input.asOptionalInput<String>(templateContent),
      templateSpecVersionId = pulumi.Input.asOptionalInput<String>(templateSpecVersionId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'debugLevel': ?debugLevel,
      'location': ?location,
      'name': ?name,
      'parametersContent': ?parametersContent,
      'tags': ?tags,
      'templateContent': ?templateContent,
      'templateSpecVersionId': ?templateSpecVersionId,
    };
  }

  factory SubscriptionTemplateDeploymentArgs.fromMap(Map<String, dynamic> map) {
    return SubscriptionTemplateDeploymentArgs(
      debugLevel: map['debugLevel'] == null ? null : pulumi.Output.create<String>(map['debugLevel'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      parametersContent: map['parametersContent'] == null ? null : pulumi.Output.create<String>(map['parametersContent'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      templateContent: map['templateContent'] == null ? null : pulumi.Output.create<String>(map['templateContent'] as String),
      templateSpecVersionId: map['templateSpecVersionId'] == null ? null : pulumi.Output.create<String>(map['templateSpecVersionId'] as String),
    );
  }
}

