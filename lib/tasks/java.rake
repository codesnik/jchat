namespace :java do
  desc "compile all jars"
  task :jar do
    system %( cd lib && javac chat/support/*.java && jar cvf chat.jar chat )

  end
end
