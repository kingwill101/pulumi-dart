// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'multicast_group_consumer_activation_log_config.dart';

/// {@template pulumi_networkservices_multicast_group_consumer_activation_multicast_group_consumer_activation_args_doc}
/// The set of arguments for MulticastGroupConsumerActivation.
/// {@endtemplate}
/// {@macro pulumi_networkservices_multicast_group_consumer_activation_multicast_group_consumer_activation_args_doc}
class MulticastGroupConsumerActivationArgs {
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// An optional text description of the multicast group consumer activation.
  final pulumi.Input<String?>? description;
  /// Labels as key-value pairs
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>?>? labels;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final pulumi.Input<String> location;
  /// The logging configuration.
  /// Structure is documented below.
  final pulumi.Input<MulticastGroupConsumerActivationLogConfig?>? logConfig;
  /// The resource name of the multicast consumer association that is in the
  /// same zone as this multicast group consumer activation.
  /// Use the following format:
  /// `projects/*/locations/*/multicastConsumerAssociations/*`.
  final pulumi.Input<String> multicastConsumerAssociation;
  /// A unique name for the multicast group consumer activation.
  /// The name is restricted to letters, numbers, and hyphen, with the first
  /// character a letter, and the last a letter or a number. The name must not
  /// exceed 48 characters.
  final pulumi.Input<String> multicastGroupConsumerActivationId;
  /// The resource name of the multicast group range activation created by the
  /// admin in the same zone as this multicast group consumer activation. Use the
  /// following format:
  /// // `projects/*/locations/*/multicastGroupRangeActivations/*`.
  final pulumi.Input<String> multicastGroupRangeActivation;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;

  /// Creates a new [MulticastGroupConsumerActivationArgs].
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [description] An optional text description of the multicast group consumer activation.
  /// [labels] Labels as key-value pairs
  /// [location] Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  /// [logConfig] The logging configuration.
  /// [multicastConsumerAssociation] The resource name of the multicast consumer association that is in the
  /// [multicastGroupConsumerActivationId] A unique name for the multicast group consumer activation.
  /// [multicastGroupRangeActivation] The resource name of the multicast group range activation created by the
  /// [project] The ID of the project in which the resource belongs.
  const MulticastGroupConsumerActivationArgs({
    this.deletionPolicy,
    this.description,
    this.labels,
    required this.location,
    this.logConfig,
    required this.multicastConsumerAssociation,
    required this.multicastGroupConsumerActivationId,
    required this.multicastGroupRangeActivation,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deletionPolicy': ?deletionPolicy,
      'description': ?description,
      'labels': ?labels,
      'location': location,
      'logConfig': ?pulumi.Input.mapOptionalInputValue<MulticastGroupConsumerActivationLogConfig, Map<String, dynamic>>(logConfig, (value) => value.toMap()),
      'multicastConsumerAssociation': multicastConsumerAssociation,
      'multicastGroupConsumerActivationId': multicastGroupConsumerActivationId,
      'multicastGroupRangeActivation': multicastGroupRangeActivation,
      'project': ?project,
    };
  }

  factory MulticastGroupConsumerActivationArgs.fromMap(Map<String, dynamic> map) {
    return MulticastGroupConsumerActivationArgs(
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      location: pulumi.Input.fromValue(map['location'] as String),
      logConfig: (() { final guardedValue = map['logConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(MulticastGroupConsumerActivationLogConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      multicastConsumerAssociation: pulumi.Input.fromValue(map['multicastConsumerAssociation'] as String),
      multicastGroupConsumerActivationId: pulumi.Input.fromValue(map['multicastGroupConsumerActivationId'] as String),
      multicastGroupRangeActivation: pulumi.Input.fromValue(map['multicastGroupRangeActivation'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
