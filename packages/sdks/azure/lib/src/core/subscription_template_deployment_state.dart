// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering SubscriptionTemplateDeployment resources.
class SubscriptionTemplateDeploymentState {
  /// The Debug Level which should be used for this Subscription Template Deployment. Possible values are `none`, `requestContent`, `responseContent` and `requestContent, responseContent`.
  final pulumi.Input<String>? debugLevel;
  /// The Azure Region where the Subscription Template Deployment should exist. Changing this forces a new Subscription Template Deployment to be created.
  final pulumi.Input<String>? location;
  /// The name which should be used for this Subscription Template Deployment. Changing this forces a new Subscription Template Deployment to be created.
  final pulumi.Input<String>? name;
  /// The JSON Content of the Outputs of the ARM Template Deployment.
  final pulumi.Input<String>? outputContent;
  /// The contents of the ARM Template parameters file - containing a JSON list of parameters.
  final pulumi.Input<String>? parametersContent;
  /// A mapping of tags which should be assigned to the Subscription Template Deployment.
  final pulumi.Input<Map<String, String>>? tags;
  /// The contents of the ARM Template which should be deployed into this Subscription.
  final pulumi.Input<String>? templateContent;
  /// The ID of the Template Spec Version to deploy into the Subscription. Cannot be specified with `template_content`.
  final pulumi.Input<String>? templateSpecVersionId;

  /// Creates a new [SubscriptionTemplateDeploymentState].
  /// [debugLevel] The Debug Level which should be used for this Subscription Template Deployment. Possible values are `none`, `requestContent`, `responseContent` and `requestContent, responseContent`.
  /// [location] The Azure Region where the Subscription Template Deployment should exist. Changing this forces a new Subscription Template Deployment to be created.
  /// [name] The name which should be used for this Subscription Template Deployment. Changing this forces a new Subscription Template Deployment to be created.
  /// [outputContent] The JSON Content of the Outputs of the ARM Template Deployment.
  /// [parametersContent] The contents of the ARM Template parameters file - containing a JSON list of parameters.
  /// [tags] A mapping of tags which should be assigned to the Subscription Template Deployment.
  /// [templateContent] The contents of the ARM Template which should be deployed into this Subscription.
  /// [templateSpecVersionId] The ID of the Template Spec Version to deploy into the Subscription. Cannot be specified with `template_content`.
  SubscriptionTemplateDeploymentState({
    this.debugLevel,
    this.location,
    this.name,
    this.outputContent,
    this.parametersContent,
    this.tags,
    this.templateContent,
    this.templateSpecVersionId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'debugLevel': ?debugLevel,
      'location': ?location,
      'name': ?name,
      'outputContent': ?outputContent,
      'parametersContent': ?parametersContent,
      'tags': ?tags,
      'templateContent': ?templateContent,
      'templateSpecVersionId': ?templateSpecVersionId,
    };
  }

  factory SubscriptionTemplateDeploymentState.fromMap(Map<String, dynamic> map) {
    return SubscriptionTemplateDeploymentState(
      debugLevel: map['debugLevel'] == null ? null : (map['debugLevel']! as String).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      outputContent: map['outputContent'] == null ? null : (map['outputContent']! as String).input(),
      parametersContent: map['parametersContent'] == null ? null : (map['parametersContent']! as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
      templateContent: map['templateContent'] == null ? null : (map['templateContent']! as String).input(),
      templateSpecVersionId: map['templateSpecVersionId'] == null ? null : (map['templateSpecVersionId']! as String).input(),
    );
  }
}

