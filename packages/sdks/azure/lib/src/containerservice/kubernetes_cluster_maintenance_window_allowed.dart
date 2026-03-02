// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class KubernetesClusterMaintenanceWindowAllowed {
  /// A day in a week. Possible values are `Sunday`, `Monday`, `Tuesday`, `Wednesday`, `Thursday`, `Friday` and `Saturday`.
  final pulumi.Input<String> day;
  /// An array of hour slots in a day. For example, specifying `1` will allow maintenance from 1:00am to 2:00am. Specifying `1`, `2` will allow maintenance from 1:00am to 3:00m. Possible values are between `0` and `23`.
  final pulumi.Input<List<int>> hours;

  /// Creates a new [KubernetesClusterMaintenanceWindowAllowed].
  /// [day] A day in a week. Possible values are `Sunday`, `Monday`, `Tuesday`, `Wednesday`, `Thursday`, `Friday` and `Saturday`.
  /// [hours] An array of hour slots in a day. For example, specifying `1` will allow maintenance from 1:00am to 2:00am. Specifying `1`, `2` will allow maintenance from 1:00am to 3:00m. Possible values are between `0` and `23`.
  KubernetesClusterMaintenanceWindowAllowed({
    required this.day,
    required this.hours,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'day': day,
      'hours': hours,
    };
  }

  factory KubernetesClusterMaintenanceWindowAllowed.fromMap(Map<String, dynamic> map) {
    return KubernetesClusterMaintenanceWindowAllowed(
      day: (map['day'] as String).input(),
      hours: ((map['hours'] as List).cast<int>()).input(),
    );
  }
}

