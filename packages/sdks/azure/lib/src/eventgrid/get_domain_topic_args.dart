// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_eventgrid_get_domain_topic_get_domain_topic_args_doc}
/// Arguments for getDomainTopic.
/// {@endtemplate}
/// {@macro pulumi_eventgrid_get_domain_topic_get_domain_topic_args_doc}
class GetDomainTopicArgs {
  /// The name of the EventGrid Domain Topic domain.
  final pulumi.Input<String> domainName;

  /// The name of the EventGrid Domain Topic resource.
  final pulumi.Input<String> name;

  /// The name of the resource group in which the EventGrid Domain Topic exists.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetDomainTopicArgs].
  /// [domainName] The name of the EventGrid Domain Topic domain.
  /// [name] The name of the EventGrid Domain Topic resource.
  /// [resourceGroupName] The name of the resource group in which the EventGrid Domain Topic exists.
  GetDomainTopicArgs({
    required this.domainName,
    required this.name,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domainName': domainName,
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetDomainTopicArgs.fromMap(Map<String, dynamic> map) {
    return GetDomainTopicArgs(
      domainName: pulumi.Input.fromValue(map['domainName'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
    );
  }
}
