import 'package:protobuf/well_known_types/google/protobuf/struct.pb.dart';
import 'package:pulumi/src/deserializer.dart';
import 'package:pulumi/src/monitor.dart';
import 'package:pulumi/src/resource/resource.dart';
import 'package:pulumi/src/struct_converter.dart';

import '../pulumirpc/pulumi/resource.pb.dart' as pb;
import 'models.dart' as models;

mixin CallMixin {
  Monitor get monitor;

  Future<void> call(
    String token,
    Map<String, dynamic> args, {
    Resource? self,
    models.CallOptions? options,
    models.RegisterPackageRequest? registerPackageRequest,
  }) async {
    await callWithResult(
      token,
      args,
      self: self,
      options: options,
      registerPackageRequest: registerPackageRequest,
    );
  }

  Future<T> callWithResult<T>(
    String token,
    Map<String, dynamic> args, {
    Resource? self,
    models.CallOptions? options,
    models.RegisterPackageRequest? registerPackageRequest,
  }) async {
    final requestArgs = Map<String, dynamic>.from(args);
    if (self != null) {
      requestArgs['__self__'] = self;
    }

    final provider =
        options?.provider ?? (self != null ? self.getProvider(token) : null);
    final urn = await provider?.urn.getValue() ?? '';
    final serializedArgs = await StructConverter.toStruct(requestArgs);
    final request = pb.ResourceCallRequest()
      ..tok = token
      ..args = serializedArgs
      ..provider = urn
      ..version = options?.version ?? '';

    if (registerPackageRequest != null) {
      request.packageRef = await _resolvePackageRef(registerPackageRequest);
    }

    final response = await monitor.call(request);

    if (response.failures.isNotEmpty) {
      throw Exception(
        'Call failed: ${response.failures.map((f) => '${f.reason} (${f.property})').join(', ')}',
      );
    }

    return _deserializeCallResponse<T>(response.return_1);
  }

  Future<String> _resolvePackageRef(
    models.RegisterPackageRequest request,
  ) async {
    // Package references are not yet modeled in the Dart SDK.
    return '';
  }

  T _deserializeCallResponse<T>(Struct response) {
    if (T == Null) {
      return null as T;
    }
    final decoded = Deserializer.deserialize<dynamic>(
      Value()..structValue = response,
    );
    return decoded.value as T;
  }
}
