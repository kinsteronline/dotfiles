{:user {:dependencies [[mate-clj "0.1.2"]]
        :plugins [[lein-cljfmt "0.6.4"]
                  [lein-kibit "0.1.6"]
                  [venantius/ultra "0.6.0"]
                  [com.jakemccrary/lein-test-refresh "0.24.1"]]
        :test-refresh {:notify-command ["terminal-notifier" "-title" "🧨 Testing! 💥" "-message"]
                       :quiet true
                       :changes-only true}}}
