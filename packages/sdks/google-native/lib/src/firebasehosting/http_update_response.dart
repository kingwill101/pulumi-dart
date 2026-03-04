// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'status_response.dart';

/// A file you can add to your existing, non-Hosting hosting service that confirms your intent to allow Hosting's Certificate Authorities to create an SSL certificate for your domain.
class HttpUpdateResponse {
  /// An error encountered during the last contents check. If null, the check completed successfully.
  final pulumi.Input<StatusResponse> checkError;

  /// A text string to serve at the path.
  final pulumi.Input<String> desired;

  /// Whether Hosting was able to find the required file contents on the specified path during its last check.
  final pulumi.Input<String> discovered;

  /// The last time Hosting systems checked for the file contents.
  final pulumi.Input<String> lastCheckTime;

  /// The path to the file.
  final pulumi.Input<String> path;

  /// Creates a new [HttpUpdateResponse].
  /// [checkError] An error encountered during the last contents check. If null, the check completed successfully.
  /// [desired] A text string to serve at the path.
  /// [discovered] Whether Hosting was able to find the required file contents on the specified path during its last check.
  /// [lastCheckTime] The last time Hosting systems checked for the file contents.
  /// [path] The path to the file.
  HttpUpdateResponse({
    required this.checkError,
    required this.desired,
    required this.discovered,
    required this.lastCheckTime,
    required this.path,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'checkError':
          pulumi.Input.mapInputValue<StatusResponse, Map<String, dynamic>>(
            checkError,
            (value) => value.toMap(),
          ),
      'desired': desired,
      'discovered': discovered,
      'lastCheckTime': lastCheckTime,
      'path': path,
    };
  }

  factory HttpUpdateResponse.fromMap(Map<String, dynamic> map) {
    return HttpUpdateResponse(
      checkError: pulumi.Input.fromValue(
        StatusResponse.fromMap(
          (map['checkError']! as Map).cast<String, dynamic>(),
        ),
      ),
      desired: pulumi.Input.fromValue(map['desired'] as String),
      discovered: pulumi.Input.fromValue(map['discovered'] as String),
      lastCheckTime: pulumi.Input.fromValue(map['lastCheckTime'] as String),
      path: pulumi.Input.fromValue(map['path'] as String),
    );
  }
}
