import 'package:either_dart/either.dart';
import 'package:rapid_chain/domain/entity/flow/flow_entity.dart';
import 'package:rapid_chain/domain/repository/flow/flow_repository.dart';
import 'package:rapid_chain/injector.dart';
import 'package:rapid_chain/util/resources/base_error_model.dart';

class FlowUsecase {
  Future<Either<BaseErrorModel, List<FlowEntity>>> getFlow() async {
    return await locator<FlowRepository>().getFlow();
  }
}
