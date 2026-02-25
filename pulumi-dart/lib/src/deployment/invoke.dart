import 'package:protobuf/well_known_types/google/protobuf/struct.pb.dart';
import 'package:pulumi/src/deserializer.dart';
import 'package:pulumi/src/monitor.dart';
import 'package:pulumi/src/struct_converter.dart';

import '../pulumirpc/pulumi/resource.pb.dart' as pb;
import 'models.dart' as models;

mixin InvokeMixin {
  Monitor get monitor;

  Future<T> invoke<T>(
    String token,
    Map<String, dynamic> args, {
    models.InvokeOptions? options,
    models.RegisterPackageRequest? registerPackageRequest,
  }) async {
    final urn = await options?.provider?.urn.getValue() ?? '';
    final serializedArgs = await StructConverter.toStruct(args);
    final request = pb.ResourceInvokeRequest()
      ..tok = token
      ..args = serializedArgs
      ..provider = urn
      ..version = options?.version ?? ''
      ..pluginDownloadURL = options?.pluginDownloadURL ?? ''
      ..acceptResources = true;

    if (registerPackageRequest != null) {
      final packageRef = await _resolvePackageRef(registerPackageRequest);
      if (packageRef != null) {
        request.packageRef = packageRef;
      }
    }

    final response = await monitor.invoke(request);

    if (response.failures.isNotEmpty) {
      throw Exception(
        'Invoke failed: ${response.failures.map((f) => '${f.reason} (${f.property})').join(', ')}',
      );
    }

    return _deserializeInvokeResponse<T>(response.return_1);
  }

  Future<T> invokeSingle<T>(
    String token,
    Map<String, dynamic> args, {
    models.InvokeOptions? options,
    models.RegisterPackageRequest? registerPackageRequest,
  }) async {
    final result = await invoke<Map<String, T>>(
      token,
      args,
      options: options,
      registerPackageRequest: registerPackageRequest,
    );
    return result.values.first;
  }

  Future<String?> _resolvePackageRef(
    models.RegisterPackageRequest request,
  ) async {
    try {
      final response = await monitor.registerPackage(request.toProto());
      return response.ref;
    } catch (_) {
      if (request.parameterization != null) {
        rethrow;
      }
      return null;
    }
  }

  T _deserializeInvokeResponse<T>(Struct response) {
    if (T == Null) {
      return null as T;
    }
    final decoded = Deserializer.deserialize<dynamic>(
      Value()..structValue = response,
    );
    return decoded.value as T;
  }
}
