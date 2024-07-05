abstract class NewestState{}

class NewestStateInitial extends NewestState{
  FeaturedStateInitial(){
    print("hi inital");
  }
}

class NewestStateLoading extends NewestState{
  FeaturedStateLoading(){
    print("hi loading");
  }
}

class NewestStateSuccess extends NewestState{

  final result;

  NewestStateSuccess(this.result){
    print("hi Succcessss!");
  }
}

class NewestStateFailure extends NewestState{
  final msg ;

  NewestStateFailure({required this.msg}){
    print(msg.toString());
  }

}