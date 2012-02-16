require 'rake'
require 'stringio'
require 'coffee-script'

OUTPUT_JS = 'js/compiled.js'
COFFEE_DIR = 'coffee'

desc "Watch #{COFFEE_DIR} and regenerate JavaScript when files change."
task :watch do
  require 'fssm'
  require 'coffee-script'
  puts "Watching CoffeeScript files in /#{COFFEE_DIR}."
  compile_coffee
  FSSM.monitor(COFFEE_DIR, '**/*.coffee') do
    update { |base, relative| recompile_coffee }
    delete { |base, relative| recompile_coffee }
    create { |base, relative| recompile_coffee }
  end
end

desc "Recompile CoffeeScript (like rake watch, but just once)"
task :recompile_coffee do
  puts "Compiling CoffeeScript files in /#{COFFEE_DIR}"
  compile_coffee
  puts "Done. CoffeeScript compiled into #{OUTPUT_JS}"
end

def recompile_coffee
  puts "Changes detected, recompiling"
  compile_coffee
  puts "Recompiled."
end

def compile_coffee
  code = StringIO.new
  Dir.glob("#{COFFEE_DIR}/**/*.coffee").each do |f|
    code << IO.read(f)
  end
  Dir.mkdir('js') unless Dir.exists? 'js'
  File.open(OUTPUT_JS, 'w') do |f|
    f.write CoffeeScript.compile code.string
  end
end
