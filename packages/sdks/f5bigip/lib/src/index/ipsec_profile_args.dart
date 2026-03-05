// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_ipsec_profile_ipsec_profile_args_doc}
/// The set of arguments for IpsecProfile.
/// {@endtemplate}
/// {@macro pulumi_index_ipsec_profile_ipsec_profile_args_doc}
class IpsecProfileArgs {
  /// Specifies descriptive text that identifies the IPsec interface tunnel profile.
  final pulumi.Input<String>? description;
  /// Displays the name of the IPsec interface tunnel profile,it should be "full path".The full path is the combination of the partition + name of the IPSec profile.(For example `/Common/test-profile`)
  final pulumi.Input<String> name;
  /// Specifies the profile from which this profile inherits settings. The default is the system-supplied `/Common/ipsec` profile
  final pulumi.Input<String>? parentProfile;
  /// Specifies the traffic selector for the IPsec interface tunnel to which the profile is applied
  final pulumi.Input<String>? trafficSelector;

  /// Creates a new [IpsecProfileArgs].
  /// [description] Specifies descriptive text that identifies the IPsec interface tunnel profile.
  /// [name] Displays the name of the IPsec interface tunnel profile,it should be "full path".The full path is the combination of the partition + name of the IPSec profile.(For example `/Common/test-profile`)
  /// [parentProfile] Specifies the profile from which this profile inherits settings. The default is the system-supplied `/Common/ipsec` profile
  /// [trafficSelector] Specifies the traffic selector for the IPsec interface tunnel to which the profile is applied
  IpsecProfileArgs({
    this.description,
    required this.name,
    this.parentProfile,
    this.trafficSelector,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'name': name,
      'parentProfile': ?parentProfile,
      'trafficSelector': ?trafficSelector,
    };
  }

  factory IpsecProfileArgs.fromMap(Map<String, dynamic> map) {
    return IpsecProfileArgs(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      parentProfile: (() { final guardedValue = map['parentProfile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      trafficSelector: (() { final guardedValue = map['trafficSelector']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

