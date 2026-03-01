// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apimanagement_policy_policy_args_doc}
/// The set of arguments for Policy.
/// {@endtemplate}
/// {@macro pulumi_apimanagement_policy_policy_args_doc}
class PolicyArgs {
  /// The ID of the API Management service. Changing this forces a new API Management service Policy to be created.
  final pulumi.Input<String> apiManagementId;
  /// The XML Content for this Policy as a string. To integrate frontend and backend services in Azure API Management, utilize the [`set-backend-service`](https://learn.microsoft.com/azure/api-management/set-backend-service-policy) policy, specifying the `base-url` value. Typically, this value corresponds to the `url` property defined in the `Backend` resource configuration.
  final pulumi.Input<String>? xmlContent;
  /// A link to a Policy XML Document, which must be publicly available.
  final pulumi.Input<String>? xmlLink;

  /// Creates a new [PolicyArgs].
  /// [apiManagementId] The ID of the API Management service. Changing this forces a new API Management service Policy to be created.
  /// [xmlContent] The XML Content for this Policy as a string. To integrate frontend and backend services in Azure API Management, utilize the [`set-backend-service`](https://learn.microsoft.com/azure/api-management/set-backend-service-policy) policy, specifying the `base-url` value. Typically, this value corresponds to the `url` property defined in the `Backend` resource configuration.
  /// [xmlLink] A link to a Policy XML Document, which must be publicly available.
  PolicyArgs({
    required pulumi.Output<String> apiManagementId,
    pulumi.Output<String>? xmlContent,
    pulumi.Output<String>? xmlLink,
  }) :
      apiManagementId = pulumi.Input.asInput<String>(apiManagementId),
      xmlContent = pulumi.Input.asOptionalInput<String>(xmlContent),
      xmlLink = pulumi.Input.asOptionalInput<String>(xmlLink);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiManagementId': apiManagementId,
      'xmlContent': ?xmlContent,
      'xmlLink': ?xmlLink,
    };
  }

  factory PolicyArgs.fromMap(Map<String, dynamic> map) {
    return PolicyArgs(
      apiManagementId: pulumi.Output.create<String>(map['apiManagementId'] as String),
      xmlContent: map['xmlContent'] == null ? null : pulumi.Output.create<String>(map['xmlContent'] as String),
      xmlLink: map['xmlLink'] == null ? null : pulumi.Output.create<String>(map['xmlLink'] as String),
    );
  }
}

