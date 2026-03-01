// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering SpringCloudApplicationLiveView resources.
class SpringCloudApplicationLiveViewState {
  /// The name which should be used for this Spring Cloud Application Live View. Changing this forces a new Spring Cloud Application Live View to be created. The only possible value is `default`.
  final pulumi.Input<String>? name;
  /// The ID of the Spring Cloud Service. Changing this forces a new Spring Cloud Application Live View to be created.
  final pulumi.Input<String>? springCloudServiceId;

  /// Creates a new [SpringCloudApplicationLiveViewState].
  /// [name] The name which should be used for this Spring Cloud Application Live View. Changing this forces a new Spring Cloud Application Live View to be created. The only possible value is `default`.
  /// [springCloudServiceId] The ID of the Spring Cloud Service. Changing this forces a new Spring Cloud Application Live View to be created.
  SpringCloudApplicationLiveViewState({
    pulumi.Output<String>? name,
    pulumi.Output<String>? springCloudServiceId,
  }) :
      name = pulumi.Input.asOptionalInput<String>(name),
      springCloudServiceId = pulumi.Input.asOptionalInput<String>(springCloudServiceId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'springCloudServiceId': ?springCloudServiceId,
    };
  }

  factory SpringCloudApplicationLiveViewState.fromMap(Map<String, dynamic> map) {
    return SpringCloudApplicationLiveViewState(
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      springCloudServiceId: map['springCloudServiceId'] == null ? null : pulumi.Output.create<String>(map['springCloudServiceId'] as String),
    );
  }
}

