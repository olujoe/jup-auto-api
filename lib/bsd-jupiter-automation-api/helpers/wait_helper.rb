require 'time'

def wait_for_assertion(timeout)
  start_time = Time.now
  interval = 1
  message = default_error
  end_time = start_time + timeout
  condition = false

  while Time.now < end_time
    begin
      condition = !yield.nil?
      break if condition
      puts '** waiting for expectation to be met **'
    rescue RSpec::Expectations::ExpectationNotMetError
      puts '** expectation NOT met **'
    end

    sleep interval
  end

  fail message unless condition
end

private

def default_error
  'Timeout waiting for assertion to pass'
end