if test -e /opt/homebrew
    set -gx HOMEBREW_PREFIX /opt/homebrew
    set -gx HOMEBREW_CELLAR /opt/homebrew/Cellar
    set -gx HOMEBREW_REPOSITORY /opt/homebrew
    fish_add_path /opt/homebrew/bin /opt/homebrew/sbin 
    set -q MANPATH; or set MANPATH ''
    set -gx MANPATH /opt/homebrew/share/man $MANPATH
    set -q INFOPATH; or set INFOPATH ''
    set -gx INFOPATH /opt/homebrew/share/info $INFOPATH

    # openssl
    if test -e /opt/homebrew/opt/openssl
        set -gxa LDFLAGS -L/opt/homebrew/opt/openssl/lib
        set -gxa CPPFLAGS -I/opt/homebrew/opt/openssl/include
    end
    
    # ruby
    if test -e /opt/homebrew/opt/ruby
        fish_add_path /opt/homebrew/opt/ruby/bin
        fish_add_path "$(gem env home)/bin"
        set -gxa LDFLAGS "-L/opt/homebrew/opt/ruby/lib"
        set -gxa CPPFLAGS "-I/opt/homebrew/opt/ruby/include"
    end
end
