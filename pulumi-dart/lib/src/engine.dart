import 'package:grpc/grpc.dart';
import 'package:pulumi/src/pulumirpc/pulumi/engine.pbgrpc.dart' as pb;

import 'engine_logger.dart';

class Engine {
  final pb.EngineClient _client;

  Engine(ClientChannel channel) : _client = pb.EngineClient(channel);

  Future<void> log(LogRequest request) async {
    try {
      await _client.log(request.toGrpc());
    } catch (e) {
      print('Error logging: $e');
      // You might want to handle this error more gracefully
    }
  }
}
