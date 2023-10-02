import Task "Task";

module {
  public type TaskList = [Task.Task];

  public var tasks : TaskList = [];

  public func addTask(task : Text) : async TaskList {
    let newTask = Task.createTask(task);
    tasks := tasks # [newTask];
    tasks;
  };

  public func getTasks() : async TaskList {
    tasks;
  };
};
