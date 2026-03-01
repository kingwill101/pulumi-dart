// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_eventgrid_domain_topic_domain_topic_args_doc}
/// The set of arguments for DomainTopic.
/// {@endtemplate}
/// {@macro pulumi_eventgrid_domain_topic_domain_topic_args_doc}
class DomainTopicArgs {
  /// Specifies the name of the EventGrid Domain. Changing this forces a new resource to be created.
  final pulumi.Input<String> domainName;
  /// Specifies the name of the EventGrid Domain Topic resource. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The name of the resource group in which the EventGrid Domain exists. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [DomainTopicArgs].
  /// [domainName] Specifies the name of the EventGrid Domain. Changing this forces a new resource to be created.
  /// [name] Specifies the name of the EventGrid Domain Topic resource. Changing this forces a new resource to be created.
  /// [resourceGroupName] The name of the resource group in which the EventGrid Domain exists. Changing this forces a new resource to be created.
  DomainTopicArgs({
    required pulumi.Output<String> domainName,
    pulumi.Output<String>? name,
    required pulumi.Output<String> resourceGroupName,
  }) :
      domainName = pulumi.Input.asInput<String>(domainName),
      name = pulumi.Input.asOptionalInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domainName': domainName,
      'name': ?name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory DomainTopicArgs.fromMap(Map<String, dynamic> map) {
    return DomainTopicArgs(
      domainName: pulumi.Output.create<String>(map['domainName'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

