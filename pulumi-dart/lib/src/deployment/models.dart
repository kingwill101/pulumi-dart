import 'package:pulumi/src/resource/resource.dart';

import '../pulumirpc/pulumi/resource.pb.dart' as pb;
import '../resource/provider_resource.dart';

/// {@template pulumi.deployment.models.invoke_options}
/// Internal invoke option model passed to deployment runtime code.
/// {@endtemplate}
///
class InvokeOptions {
  final Resource? parent;
  final ProviderResource? provider;
  final String? version;
  final String? pluginDownloadURL;

  InvokeOptions({
    this.parent,
    this.provider,
    this.version,
    this.pluginDownloadURL,
  });
}

/// {@template pulumi.deployment.models.call_options}
/// Internal call option model passed to deployment runtime code.
/// {@endtemplate}
///
class CallOptions {
  final Resource? parent;
  final ProviderResource? provider;
  final String? version;
  final String? pluginDownloadURL;

  CallOptions({
    this.parent,
    this.provider,
    this.version,
    this.pluginDownloadURL,
  });
}

/// {@template pulumi.deployment.models.parameterization}
/// Package parameterization payload for provider packages.
/// {@endtemplate}
///
class Parameterization {
  final String? name;
  final String? version;
  final List<int>? value;

  Parameterization({this.name, this.version, this.value});
}

/// {@template pulumi.deployment.models.register_package_request}
/// Request to register a provider package with the monitor.
/// {@endtemplate}
///
class RegisterPackageRequest {
  final String name;
  final String version;
  final String? downloadUrl;
  final Map<String, List<int>>? checksums;
  final Parameterization? parameterization;

  RegisterPackageRequest({
    required this.name,
    required this.version,
    this.downloadUrl,
    this.checksums,
    this.parameterization,
  });
}

/// Protobuf conversion helpers for [RegisterPackageRequest].
extension RegisterPackageRequestProto on RegisterPackageRequest {
  pb.RegisterPackageRequest toProto() {
    final request = pb.RegisterPackageRequest()
      ..name = name
      ..version = version;
    if (downloadUrl != null) {
      request.downloadUrl = downloadUrl!;
    }
    if (checksums != null) {
      request.checksums.addAll(checksums!);
    }
    if (parameterization != null) {
      request.parameterization = pb.Parameterization(
        name: parameterization!.name ?? '',
        version: parameterization!.version ?? '',
        value: parameterization!.value ?? const <int>[],
      );
    }
    return request;
  }
}
