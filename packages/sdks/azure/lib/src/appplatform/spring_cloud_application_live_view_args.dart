// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_appplatform_spring_cloud_application_live_view_spring_cloud_application_live_view_args_doc}
/// The set of arguments for SpringCloudApplicationLiveView.
/// {@endtemplate}
/// {@macro pulumi_appplatform_spring_cloud_application_live_view_spring_cloud_application_live_view_args_doc}
class SpringCloudApplicationLiveViewArgs {
  /// The name which should be used for this Spring Cloud Application Live View. Changing this forces a new Spring Cloud Application Live View to be created. The only possible value is `default`.
  final pulumi.Input<String>? name;
  /// The ID of the Spring Cloud Service. Changing this forces a new Spring Cloud Application Live View to be created.
  final pulumi.Input<String> springCloudServiceId;

  /// Creates a new [SpringCloudApplicationLiveViewArgs].
  /// [name] The name which should be used for this Spring Cloud Application Live View. Changing this forces a new Spring Cloud Application Live View to be created. The only possible value is `default`.
  /// [springCloudServiceId] The ID of the Spring Cloud Service. Changing this forces a new Spring Cloud Application Live View to be created.
  SpringCloudApplicationLiveViewArgs({
    this.name,
    required this.springCloudServiceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'springCloudServiceId': springCloudServiceId,
    };
  }

  factory SpringCloudApplicationLiveViewArgs.fromMap(Map<String, dynamic> map) {
    return SpringCloudApplicationLiveViewArgs(
      name: map['name'] == null ? null : (map['name']! as String).input(),
      springCloudServiceId: (map['springCloudServiceId'] as String).input(),
    );
  }
}

