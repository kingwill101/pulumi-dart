// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Carries information about a Google Cloud service account.
class ServiceAccountResponse {
  /// Email address of the service account. If not specified, the default Compute Engine service account for the project will be used. If instance template is being used, the service account has to be specified in the instance template and it has to match the email field here.
  final pulumi.Input<String> email;
  /// List of scopes to be enabled for this service account on the VM, in addition to the cloud-platform API scope that will be added by default.
  final pulumi.Input<List<String>> scopes;

  /// Creates a new [ServiceAccountResponse].
  /// [email] Email address of the service account. If not specified, the default Compute Engine service account for the project will be used. If instance template is being used, the service account has to be specified in the instance template and it has to match the email field here.
  /// [scopes] List of scopes to be enabled for this service account on the VM, in addition to the cloud-platform API scope that will be added by default.
  ServiceAccountResponse({
    required this.email,
    required this.scopes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'email': email,
      'scopes': scopes,
    };
  }

  factory ServiceAccountResponse.fromMap(Map<String, dynamic> map) {
    return ServiceAccountResponse(
      email: (map['email'] as String).input(),
      scopes: ((map['scopes'] as List).cast<String>()).input(),
    );
  }
}

