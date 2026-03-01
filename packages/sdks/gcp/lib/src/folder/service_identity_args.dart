// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_folder_service_identity_service_identity_args_doc}
/// The set of arguments for ServiceIdentity.
/// {@endtemplate}
/// {@macro pulumi_folder_service_identity_service_identity_args_doc}
class ServiceIdentityArgs {
  /// The folder in which the resource belongs.
  final pulumi.Input<String> folder;
  /// The service to generate identity for.
  ///
  /// - - -
  final pulumi.Input<String> service;

  /// Creates a new [ServiceIdentityArgs].
  /// [folder] The folder in which the resource belongs.
  /// [service] The service to generate identity for.
  ServiceIdentityArgs({
    required pulumi.Output<String> folder,
    required pulumi.Output<String> service,
  }) :
      folder = pulumi.Input.asInput<String>(folder),
      service = pulumi.Input.asInput<String>(service);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'folder': folder,
      'service': service,
    };
  }

  factory ServiceIdentityArgs.fromMap(Map<String, dynamic> map) {
    return ServiceIdentityArgs(
      folder: pulumi.Output.create<String>(map['folder'] as String),
      service: pulumi.Output.create<String>(map['service'] as String),
    );
  }
}

