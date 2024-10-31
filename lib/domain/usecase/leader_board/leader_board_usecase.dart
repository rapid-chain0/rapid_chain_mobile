import 'package:either_dart/either.dart';
import 'package:rapid_chain/domain/entity/leader_board/point_leader_board_entity.dart';
import 'package:rapid_chain/domain/entity/leader_board/reference_leader_board_entity.dart';
import 'package:rapid_chain/domain/repository/leader_board/leader_board_repository.dart';
import 'package:rapid_chain/injector.dart';
import 'package:rapid_chain/util/resources/base_error_model.dart';

class LeaderBoardUsecase {
  Future<Either<BaseErrorModel, PointLeaderBoardEntity>>
      pointLeaderBoard() async {
    return await locator<LeaderBoardRepository>().pointLeaderBoard();
  }

  Future<Either<BaseErrorModel, ReferenceLeaderBoardEntity>>
      referenceLeaderBoard() async {
    return await locator<LeaderBoardRepository>().referenceLeaderBoard();
  }
}