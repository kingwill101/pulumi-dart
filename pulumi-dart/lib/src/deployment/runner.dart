import 'dart:async';
import 'deployment.dart';

class Runner {
  final Deployment _deployment;

  Runner(this._deployment);

  Future<int> runAsync(Function() func) async {
    try {
      func();
      // TODO: Implement actual resource creation and updates
      return 0;
    } catch (e, stackTrace) {
      await _deployment.logger.error('An error occurred during deployment');
      print(e);
      print(stackTrace);
      return 1;
    }
  }
}
