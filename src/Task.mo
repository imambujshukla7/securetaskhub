module {

  public type Task = {
    id : Nat;
    description : Text;
  };

  public func createTask(description : Text) : Task {
    {
      id = Prim.Increment;
      description = description;
    };
  };
};
