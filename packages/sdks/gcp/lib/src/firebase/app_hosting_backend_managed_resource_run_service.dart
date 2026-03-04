// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AppHostingBackendManagedResourceRunService {
  /// (Output)
  /// The name of the Cloud Run
  /// [`service`](https://cloud.google.com/run/docs/reference/rest/v2/projects.locations.services#resource:-service),
  /// in the format:
  /// projects/{project}/locations/{location}/services/{serviceId}
  final pulumi.Input<String>? service;

  /// Creates a new [AppHostingBackendManagedResourceRunService].
  /// [service] (Output)
  AppHostingBackendManagedResourceRunService({this.service});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'service': ?service};
  }

  factory AppHostingBackendManagedResourceRunService.fromMap(
    Map<String, dynamic> map,
  ) {
    return AppHostingBackendManagedResourceRunService(
      service: (() {
        final guardedValue = map['service'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
