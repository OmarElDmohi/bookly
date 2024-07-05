abstract class FeaturedState{}

class FeaturedStateInitial extends FeaturedState{
  FeaturedStateInitial(){
    print("hi inital");
  }
}

class FeaturedStateLoading extends FeaturedState{
  FeaturedStateLoading(){
    print("hi loading");
  }
}

class FeaturedStateSuccess extends FeaturedState{

  final result;

  FeaturedStateSuccess(this.result){
    print("hi Succcessss!");
  }
}

class FeaturedStateFailure extends FeaturedState{
  final msg ;

  FeaturedStateFailure({required this.msg}){
    print(msg.toString());
  }

}