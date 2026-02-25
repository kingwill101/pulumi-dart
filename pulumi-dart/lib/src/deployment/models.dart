import 'package:pulumi/src/resource/resource.dart';

import '../pulumirpc/pulumi/resource.pb.dart' as pb;
import '../resource/provider_resource.dart';

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

class Parameterization {
  final String? name;
  final String? version;
  final List<int>? value;

  Parameterization({this.name, this.version, this.value});
}

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
