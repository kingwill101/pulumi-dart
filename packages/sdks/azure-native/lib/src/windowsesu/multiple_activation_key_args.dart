// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_windowsesu_multiple_activation_key_args_doc}
/// The set of arguments for MultipleActivationKey.
/// {@endtemplate}
/// {@macro pulumi_windowsesu_multiple_activation_key_args_doc}
class MultipleActivationKeyArgs {
  /// Agreement number under which the key is requested.
  final pulumi.Input<String>? agreementNumber;
  /// Number of activations/servers using the MAK key.
  final pulumi.Input<int>? installedServerNumber;
  /// <code> true </code> if user has eligible on-premises Windows physical or virtual machines, and that the requested key will only be used in their organization; <code> false </code> otherwise.
  final pulumi.Input<bool>? isEligible;
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// The name of the MAK key.
  final pulumi.Input<String>? multipleActivationKeyName;
  /// Type of OS for which the key is requested.
  final pulumi.Input<String>? osType;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Type of support
  final pulumi.Input<String>? supportType;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [MultipleActivationKeyArgs].
  /// [agreementNumber] Agreement number under which the key is requested.
  /// [installedServerNumber] Number of activations/servers using the MAK key.
  /// [isEligible] <code> true </code> if user has eligible on-premises Windows physical or virtual machines, and that the requested key will only be used in their organization; <code> false </code> otherwise.
  /// [location] The geo-location where the resource lives
  /// [multipleActivationKeyName] The name of the MAK key.
  /// [osType] Type of OS for which the key is requested.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [supportType] Type of support
  /// [tags] Resource tags.
  MultipleActivationKeyArgs({
    pulumi.Output<String>? agreementNumber,
    pulumi.Output<int>? installedServerNumber,
    pulumi.Output<bool>? isEligible,
    pulumi.Output<String>? location,
    pulumi.Output<String>? multipleActivationKeyName,
    pulumi.Output<String>? osType,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<String>? supportType,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      agreementNumber = pulumi.Input.asOptionalInput<String>(agreementNumber),
      installedServerNumber = pulumi.Input.asOptionalInput<int>(installedServerNumber),
      isEligible = pulumi.Input.asOptionalInput<bool>(isEligible),
      location = pulumi.Input.asOptionalInput<String>(location),
      multipleActivationKeyName = pulumi.Input.asOptionalInput<String>(multipleActivationKeyName),
      osType = pulumi.Input.asOptionalInput<String>(osType),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      supportType = pulumi.Input.asOptionalInput<String>(supportType),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'agreementNumber': ?agreementNumber,
      'installedServerNumber': ?installedServerNumber,
      'isEligible': ?isEligible,
      'location': ?location,
      'multipleActivationKeyName': ?multipleActivationKeyName,
      'osType': ?osType,
      'resourceGroupName': resourceGroupName,
      'supportType': ?supportType,
      'tags': ?tags,
    };
  }

  factory MultipleActivationKeyArgs.fromMap(Map<String, dynamic> map) {
    return MultipleActivationKeyArgs(
      agreementNumber: map['agreementNumber'] == null ? null : pulumi.Output.create<String>(map['agreementNumber'] as String),
      installedServerNumber: map['installedServerNumber'] == null ? null : pulumi.Output.create<int>(map['installedServerNumber'] as int),
      isEligible: map['isEligible'] == null ? null : pulumi.Output.create<bool>(map['isEligible'] as bool),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      multipleActivationKeyName: map['multipleActivationKeyName'] == null ? null : pulumi.Output.create<String>(map['multipleActivationKeyName'] as String),
      osType: map['osType'] == null ? null : pulumi.Output.create<String>(map['osType'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      supportType: map['supportType'] == null ? null : pulumi.Output.create<String>(map['supportType'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

