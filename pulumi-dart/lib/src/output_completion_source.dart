import 'output.dart';
import 'resource/resource.dart';

abstract class IOutputCompletionSource {
  Type get targetType;

  Output get output;

  void trySetException(Exception exception);

  void trySetDefaultResult(bool isKnown);

  void setStringValue(String value, bool isKnown);

  void setValue(OutputData<Object?> data);
}

class OutputCompletionSource {
  static Map<String, IOutputCompletionSource> initializeOutputs(
      Resource resource) {
    // Implement initialization logic
    return {};
  }
}
