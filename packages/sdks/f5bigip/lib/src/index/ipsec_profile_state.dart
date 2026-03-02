// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering IpsecProfile resources.
class IpsecProfileState {
  /// Specifies descriptive text that identifies the IPsec interface tunnel profile.
  final pulumi.Input<String>? description;
  /// Displays the name of the IPsec interface tunnel profile,it should be "full path".The full path is the combination of the partition + name of the IPSec profile.(For example `/Common/test-profile`)
  final pulumi.Input<String>? name;
  /// Specifies the profile from which this profile inherits settings. The default is the system-supplied `/Common/ipsec` profile
  final pulumi.Input<String>? parentProfile;
  /// Specifies the traffic selector for the IPsec interface tunnel to which the profile is applied
  final pulumi.Input<String>? trafficSelector;

  /// Creates a new [IpsecProfileState].
  /// [description] Specifies descriptive text that identifies the IPsec interface tunnel profile.
  /// [name] Displays the name of the IPsec interface tunnel profile,it should be "full path".The full path is the combination of the partition + name of the IPSec profile.(For example `/Common/test-profile`)
  /// [parentProfile] Specifies the profile from which this profile inherits settings. The default is the system-supplied `/Common/ipsec` profile
  /// [trafficSelector] Specifies the traffic selector for the IPsec interface tunnel to which the profile is applied
  IpsecProfileState({
    this.description,
    this.name,
    this.parentProfile,
    this.trafficSelector,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'name': ?name,
      'parentProfile': ?parentProfile,
      'trafficSelector': ?trafficSelector,
    };
  }

  factory IpsecProfileState.fromMap(Map<String, dynamic> map) {
    return IpsecProfileState(
      description: map['description'] == null ? null : (map['description'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      parentProfile: map['parentProfile'] == null ? null : (map['parentProfile'] as String).input(),
      trafficSelector: map['trafficSelector'] == null ? null : (map['trafficSelector'] as String).input(),
    );
  }
}

