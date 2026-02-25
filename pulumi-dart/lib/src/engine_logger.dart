import 'deployment/deployment.dart';
import 'resource/resource.dart';

class EngineLogger {
  final Deployment _deployment;

  EngineLogger(this._deployment);

  Future<void> debug(String message, {Resource? resource}) async {
    // TODO: Implement actual logging logic
    print('DEBUG: $message');
  }

  Future<void> info(String message, {Resource? resource}) async {
    // TODO: Implement actual logging logic
    print('INFO: $message');
  }

  Future<void> warn(String message, {Resource? resource}) async {
    // TODO: Implement actual logging logic
    print('WARN: $message');
  }

  Future<void> error(String message, {Resource? resource}) async {
    // TODO: Implement actual logging logic
    print('ERROR: $message');
  }
}
