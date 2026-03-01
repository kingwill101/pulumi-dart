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
    pulumi.Output<String>? description,
    pulumi.Output<String>? name,
    pulumi.Output<String>? parentProfile,
    pulumi.Output<String>? trafficSelector,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      name = pulumi.Input.asOptionalInput<String>(name),
      parentProfile = pulumi.Input.asOptionalInput<String>(parentProfile),
      trafficSelector = pulumi.Input.asOptionalInput<String>(trafficSelector);

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
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      parentProfile: map['parentProfile'] == null ? null : pulumi.Output.create<String>(map['parentProfile'] as String),
      trafficSelector: map['trafficSelector'] == null ? null : pulumi.Output.create<String>(map['trafficSelector'] as String),
    );
  }
}

