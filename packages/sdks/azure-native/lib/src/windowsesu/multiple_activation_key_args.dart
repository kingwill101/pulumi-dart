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
  /// &lt;code&gt; true &lt;/code&gt; if user has eligible on-premises Windows physical or virtual machines, and that the requested key will only be used in their organization; &lt;code&gt; false &lt;/code&gt; otherwise.
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
  /// [isEligible] &lt;code&gt; true &lt;/code&gt; if user has eligible on-premises Windows physical or virtual machines, and that the requested key will only be used in their organization; &lt;code&gt; false &lt;/code&gt; otherwise.
  /// [location] The geo-location where the resource lives
  /// [multipleActivationKeyName] The name of the MAK key.
  /// [osType] Type of OS for which the key is requested.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [supportType] Type of support
  /// [tags] Resource tags.
  const MultipleActivationKeyArgs({
    this.agreementNumber,
    this.installedServerNumber,
    this.isEligible,
    this.location,
    this.multipleActivationKeyName,
    this.osType,
    required this.resourceGroupName,
    this.supportType,
    this.tags,
  });

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
      agreementNumber: (() { final guardedValue = map['agreementNumber']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      installedServerNumber: (() { final guardedValue = map['installedServerNumber']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      isEligible: (() { final guardedValue = map['isEligible']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      multipleActivationKeyName: (() { final guardedValue = map['multipleActivationKeyName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      osType: (() { final guardedValue = map['osType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      supportType: (() { final guardedValue = map['supportType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}

